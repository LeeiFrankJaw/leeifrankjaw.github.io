var listing = [
  {
    "type": "directory",
    "name": "articles",
    "contents": [
      {
        "type": "file",
        "name": "clang_vs_gcc_for_emacs.html",
        "author_date": "2017-12-18T17:10:32+08:00"
      },
      {
        "type": "file",
        "name": "fix_filename_encoding_for_zip_archive_with_python.html",
        "author_date": "2017-11-27T10:16:44+08:00"
      },
      {
        "type": "file",
        "name": "for-in_vs_for-of.html",
        "author_date": "2017-10-27T09:23:11+08:00"
      }
    ]
  },
  {
    "type": "directory",
    "name": "notes",
    "contents": [
      {
        "type": "file",
        "name": "intro_db.html",
        "author_date": "2017-12-03T22:21:53+08:00"
      },
      {
        "type": "file",
        "name": "automata.html",
        "author_date": "2017-09-07T23:49:51+08:00"
      }
    ]
  }
];
var title = "Abeunt studia in mores";

var main;

function clearElement(elem=main) {
    while (elem.firstChild) {
        elem.removeChild(elem.firstChild);
    }
}


function addTextNode(elem, text, clear=false) {
    if (clear) {
        clearElement(elem);
    }
    if (text) {
        if (text.toString) {
            text = text.toString();
        }
        const lines = text.split("\n");
        for (const line of lines) {
            elem.appendChild(document.createTextNode(line));
            newElement("br", elem);
        }
        elem.removeChild(elem.lastElementChild);
    }
    return elem;
}


function newElement(tagName, target=main, text="") {
    const elem = document.createElement(tagName);
    if (target) {
        target.appendChild(elem);
    }
    return addTextNode(elem, text);
}

var pathsegs = window.location.pathname.split("/");
var route = pathsegs[1];
if (route) {
    title = document.title;
    document.title = "Redirecting";
    function matchRoute(entry) {
        return entry.type === "directory" && entry.name === route;
    }
    var matched = listing.find(matchRoute);
    if (matched && matched.contents.length) {
        window.location.replace(
            ["", route, matched.contents[0].name].join("/")
        );
    } else {
        document.title = title;
    }
} else {
    document.addEventListener("DOMContentLoaded", function() {
        document.title = title;
        var header = document.getElementById("header");
        newElement("h1", header, title);
        main = document.getElementById("main");
    });
}
