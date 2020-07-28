#!/usr/bin/env python3
import json
import os
from datetime import datetime
from functools import reduce
from subprocess import PIPE, run

import lxml.html

ignored_dirs = ['lib', 'src', 'img', 'styles']


def is_ignored(dirname):
    return dirname.startswith('.') or dirname in ignored_dirs


def ignore(dirnames):
    dirnames[:] = [dirname for dirname in dirnames if not is_ignored(dirname)]


def pred_gen(**kwargs):
    return lambda x: all(x[k] == kwargs[k] for k in kwargs)


def get_dir(obj, ks):

    def get_dir_aux(obj, k):
        pred = pred_gen(type='directory', name=k)
        res = next(filter(pred, obj))
        return res['contents']

    return reduce(get_dir_aux, ks, obj)


def get_author_date(path):
    html = lxml.html.parse(path)
    date_text = html.xpath('string(//div[@id="postamble"]/p[@class="date"])')
    if date_text:
        date_str = date_text.split(': ')[1]
        return (datetime.strptime(date_str, '%Y-%m-%d %a %H:%M')
                .astimezone().isoformat())

    status_cmdargs = ['git', 'status', '--short', path]
    status = run(status_cmdargs, stdout=PIPE).stdout.decode().strip()[:2]
    if not status:
        log_cmdargs = ['git', 'log', '--max-count=1', '--format=%aI', path]
        return run(log_cmdargs, stdout=PIPE).stdout.decode().strip()
    return (datetime.fromtimestamp(os.path.getmtime(path))
            .astimezone().isoformat())


def get_title(path):
    return ' '.join(lxml.html.parse(path).xpath('string(//title)').split())


def sort_by_author_date(contents):
    # ISO 8601 supports lexicographical sorting
    contents.sort(key=lambda x: x['author_date'], reverse=True)


walker = os.walk('.')
dirpath, dirnames, filenames = next(walker)
ignore(dirnames)
dirnames.sort()

# yapf: disable
listing = []                    # type: list
# yapf: enable

for dirpath, dirnames, filenames in walker:
    # ignore(dirnames)
    pathsegs = dirpath.split(os.sep)[1:]
    updir = get_dir(listing, pathsegs[:-1])
    contents = []
    for name in filenames:
        if name.endswith('.html'):
            path = os.path.join(dirpath, name)
            entry = {
                'type': 'file',
                'name': name,
                'title': get_title(path),
                'author_date': get_author_date(path)
            }
            if name != 'index.html':
                contents.append(entry)
            else:
                entry['name'] = pathsegs[-1] + '/'
                updir.append(entry)
                sort_by_author_date(updir)
    if contents:
        sort_by_author_date(contents)
        updir.append({
            'type': 'directory',
            'name': pathsegs[-1],
            'contents': contents
        })

with open('listing.json', 'w') as f:
    json.dump(listing, f, indent=4)
