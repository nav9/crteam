
var $buoop = {vs:{i:8,f:33,o:17,s:6},c:2};/*means: versions <= IE8, Firefox 35, Opera 17, Safari 6 and Chrome (automatic)*/
function $buo_f() {
var e = document.createElement("script");
e.src = "js/lib/updateYourBrowser.js";
document.body.appendChild(e);
};
try {document.addEventListener("DOMContentLoaded", $buo_f, false);}
catch (e) {window.attachEvent("onload", $buo_f);}