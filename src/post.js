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
});
