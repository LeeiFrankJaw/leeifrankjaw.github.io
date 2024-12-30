document.addEventListener("DOMContentLoaded", function() {
    var a = document.querySelector(".validation a");
    var img = document.createElement("img");
    img.src = "https://www.w3.org/Icons/valid-xhtml10";
    img.alt = "Valid XHTML 1.0 Strict";
    img.width = 88;
    img.height = 31;
    a.protocol = "https:";
    a.href = a.href.replace('referer', window.location);
    a.replaceChild(img, a.firstChild);
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
                window.location.href = "#table-of-contents";
                break;
            case "l":
                window.history.back();
                break;
            case "r":
                window.history.forward();
                break;
            case "<":
                window.location.href = "#content";
                break;
            case ">":
                window.location.href = "#postamble";
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
    var disqusIdentifier = document.getElementById("disqus-identifier");
    if (disqusIdentifier) {
        var disqusThread = document.createElement("div");
        disqusThread.id = "disqus_thread";
        document.body.appendChild(disqusThread);
        var disqus_config = function () {
            var l = window.location;
            this.page.url = [l.protocol, "//", l.hostname, l.pathname].join("");
            this.page.identifier = disqusIdentifier.value;
            this.page.title = document.title;
        };
        (function() {
            var d = document, s = d.createElement('script');
            s.src = 'https://leeifrankjaw.disqus.com/embed.js';
            s.setAttribute('data-timestamp', +new Date());
            (d.head || d.body).appendChild(s);
        })();
        var noscript = document.createElement("noscript");
        noscript.innerHTML = 'Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a>';
        document.body.appendChild(noscript);
    }
});
