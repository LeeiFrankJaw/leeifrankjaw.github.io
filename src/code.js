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


document.addEventListener("DOMContentLoaded", function() {
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
        document.title = title;
        var header = document.getElementById("header");
        newElement("h1", header, title);
        main = document.getElementById("main");
    }
});
