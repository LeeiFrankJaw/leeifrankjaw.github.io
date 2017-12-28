document.addEventListener("DOMContentLoaded", function() {
    var a = document.querySelector(".validation a");
    var img = document.createElement('img');
    img.src = "https://www.w3.org/Icons/valid-xhtml10";
    img.alt = "Valid XHTML 1.0 Strict";
    img.width = 88;
    img.height = 31;
    a.protocol = "https:";
    a.replaceChild(img, a.firstChild);
    // a.innerHTML = '<img src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Strict" width="88" height="31" />';
    var anchors = document.getElementsByTagName("a");
    for (var i = 0; i < anchors.length; i++) {
        var anchor = anchors[i];
        if (anchor.hostname !== window.location.hostname
            || anchor.pathname !== window.location.pathname) {
            anchor.target = "_blank";
        }
    }
    document.onkeydown = function(e) {
        if (!(e.ctrlKey || e.altKey || e.metaKey)) {
            switch (e.key) {
            case "t":
                window.location.href = "#content";
                break;
            case "l":
                window.history.back();
                break;
            case "r":
                window.history.forward();
                break;
            case "n":
                break;
            case "p":
                break;
            default:
                break;
            }
        }
    };
});
