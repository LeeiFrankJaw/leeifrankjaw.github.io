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


// a more generealized function addNode should be implemented
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


function newAnchor(link, target, text, reuse) {
    var a = newElement("a", target, text);
    a.href = link;
    if (!reuse) {
        a.target = "_blank";
    }
    return a;
}


function newTr(fields, target, isHead) {
    var tItem = (isHead) ? "th" : "td";
    var tr = newElement("tr", target);
    for (var i = 0; i < fields.length; i++) {
        if (typeof fields[i] === "string") {
            newElement(tItem, tr, fields[i]);
        } else {
            newElement(tItem, tr).appendChild(fields[i]);
        }
    }
    return tr;
}


Date.prototype.toEnUSDateString = function() {
    return [this.getMonth() + 1, this.getDate(), this.getFullYear()].join("/");
};


function newWritingList(entry) {
    var contents = entry.contents;
    var table = document.createElement("table");
    var thead = newElement("thead", table);
    newTr(["Title", "Last Modified"], thead, true);
    var tbody = newElement("tbody", table);
    for (var i = 0; i < contents.length; i++) {
        if (contents[i].type === "file") {
            newTr([newAnchor(["", entry.name, contents[i].name].join("/"),
                             null, contents[i].title),
                   new Date(contents[i].author_date).toEnUSDateString()],
                  tbody);
        }
    }
    return table;
}


function renderHome() {
    var title = CONTENT.title;
    document.title = title;
    var header = document.getElementById("header");
    newElement("h1", header, title);
    MAIN = document.getElementById("main");
    MENU = document.getElementById("menu");
    RIGHT_PANE = document.getElementById("right-pane");
    var btns = [], btn, tables = [];
    for (var i = 0; i < LISTING.length; i++) {
        var entry = LISTING[i];
        // checking is unnecessary, since currently guaranteed
        // if (entry.type === "directory") {
        btn = newElement("button", MENU, entry.name);
        btn.value = i;
        btns.push(btn);
        tables.push(newWritingList(entry));
        // }
    }
    for (i = 0; i < btns.length; i++) {
        btns[i].onclick = function(e) {
            var btn = document.getElementById("selected");
            btn.removeAttribute("id");
            e.target.id = "selected";
            MAIN.replaceChild(tables[e.target.value], tables[btn.value]);
        };
    }
    btns[0].id = "selected";
    MAIN.appendChild(tables[0]);
    var rightPane = CONTENT["right-pane"];
    var a = newAnchor(rightPane.link, RIGHT_PANE);
    var img = newElement("img", a);
    img.src = rightPane.img;
}
