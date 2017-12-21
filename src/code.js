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
