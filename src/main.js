if (!Array.prototype.includes) {
  Object.defineProperty(Array.prototype, 'includes', {
    value: function(searchElement, fromIndex) {

      // 1. Let O be ? ToObject(this value).
      if (this == null) {
        throw new TypeError('"this" is null or not defined');
      }

      var o = Object(this);

      // 2. Let len be ? ToLength(? Get(O, "length")).
      var len = o.length >>> 0;

      // 3. If len is 0, return false.
      if (len === 0) {
        return false;
      }

      // 4. Let n be ? ToInteger(fromIndex).
      //    (If fromIndex is undefined, this step produces the value 0.)
      var n = fromIndex | 0;

      // 5. If n ≥ 0, then
      //  a. Let k be n.
      // 6. Else n < 0,
      //  a. Let k be len + n.
      //  b. If k < 0, let k be 0.
      var k = Math.max(n >= 0 ? n : len - Math.abs(n), 0);

      function sameValueZero(x, y) {
        return x === y || (typeof x === 'number' && typeof y === 'number' && isNaN(x) && isNaN(y));
      }

      // 7. Repeat, while k < len
      while (k < len) {
        // a. Let elementK be the result of ? Get(O, ! ToString(k)).
        // b. If SameValueZero(searchElement, elementK) is true, return true.
        // c. Increase k by 1. 
        if (sameValueZero(o[k], searchElement)) {
          return true;
        }
        k++;
      }

      // 8. Return false
      return false;
    }
  });
}

if (!Array.prototype.find) {
  Object.defineProperty(Array.prototype, 'find', {
    value: function(predicate) {
     // 1. Let O be ? ToObject(this value).
      if (this == null) {
        throw new TypeError('"this" is null or not defined');
      }

      var o = Object(this);

      // 2. Let len be ? ToLength(? Get(O, "length")).
      var len = o.length >>> 0;

      // 3. If IsCallable(predicate) is false, throw a TypeError exception.
      if (typeof predicate !== 'function') {
        throw new TypeError('predicate must be a function');
      }

      // 4. If thisArg was supplied, let T be thisArg; else let T be undefined.
      var thisArg = arguments[1];

      // 5. Let k be 0.
      var k = 0;

      // 6. Repeat, while k < len
      while (k < len) {
        // a. Let Pk be ! ToString(k).
        // b. Let kValue be ? Get(O, Pk).
        // c. Let testResult be ToBoolean(? Call(predicate, T, « kValue, k, O »)).
        // d. If testResult is true, return kValue.
        var kValue = o[k];
        if (predicate.call(thisArg, kValue, k, o)) {
          return kValue;
        }
        // e. Increase k by 1.
        k++;
      }

      // 7. Return undefined.
      return undefined;
    }
  });
}

var LISTING = [
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

var CONTENT = {
    "title": "Abeunt studia in mores",
    "right-pane": {
        "link": "http://news.xinhuanet.com/politics/2016-08/29/c_129260594.htm",
        "img": "img/art5030981023.jpg"
    }
};

var pathsegs = window.location.pathname.split("/");
var route = pathsegs[1];

if (!route || window.location.protocol === "file:") {
    document.addEventListener("DOMContentLoaded", renderHome);
} else {
    document.title = "Redirecting";
    function matchRoute(entry) {
        return entry.type === "directory" && entry.name === route;
    }
    var matched = LISTING.find(matchRoute);
    if (matched && matched.contents.length) {
        window.location.replace(
            ["", route, matched.contents[0].name].join("/")
        );
    } else {
        document.title = "Page not found · GitHub Pages";
    }
}

var MAIN, MENU, RIGHT_PANE;


function clearElement(elem) {
    if (elem === undefined) {
        elem = MAIN;
    }
    while (elem.firstChild) {
        elem.removeChild(elem.firstChild);
    }
}


function addTextNode(elem, text, clear) {
    if (clear) {
        clearElement(elem);
    }
    if (text) {
        if (text.toString) {
            text = text.toString();
        }
        var lines = text.split("\n");
        for (var i = 0; i < lines.length; i++) {
            var line = lines[i];
            elem.appendChild(document.createTextNode(line));
            newElement("br", elem);
        }
        elem.removeChild(elem.lastElementChild);
    }
    return elem;
}


function newElement(tagName, target, text) {
    if (target === undefined) {
        target = MAIN;
    }
    const elem = document.createElement(tagName);
    if (target) {
        target.appendChild(elem);
    }
    return addTextNode(elem, text);
}


function renderHome() {
    var title = CONTENT.title;
    document.title = title;
    var header = document.getElementById("header");
    newElement("h1", header, title);
    MAIN = document.getElementById("main");
    MENU = document.getElementById("menu");
    RIGHT_PANE = document.getElementById("right-pane");
    for (var i = 0; i < LISTING.length; i++) {
        var entry = LISTING[i];
        if (entry.type === "directory") {
            newElement("button", MENU, entry.name);
        }
    }
    var a = newElement("a", RIGHT_PANE);
    var img = newElement("img", a);
    var rightPane = CONTENT["right-pane"];
    a.href = rightPane.link;
    a.style["background-image"] = "url(" + rightPane.img +")";
}
