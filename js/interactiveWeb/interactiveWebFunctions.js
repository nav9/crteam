var mainTitle = $(".main-title"), mainMenuBtn = $(".btn_main-menu"), mainMenu = $(".main-menu"), mainMenu = $(".main-menu"), mainMenuWidth = mainMenu.width();
mainMenuBtn.on("click", function (a) {
    a.preventDefault(), $("body").toggleClass("overflow-hidden"), mainMenu.toggleClass("active"), mainMenuBtn.toggleClass("active"), mainTitle.toggleClass("active")
});
var searchBtn = $(".btn_buscar"), searchForm = $("#searchform");
searchBtn.on("click", function (a) {
    a.preventDefault(), searchForm.addClass("active"), searchBtn.addClass("active")
}), $(window).on("scroll", function () {
    searchForm.removeClass("active").find("#s").val(""), searchBtn.removeClass("active")
});
var pattern = (new Trianglify).generate(document.body.clientWidth, document.body.clientHeight);
$("body").css("background-image", pattern.dataUrl);
var coverPost = function (a) {
    var b = $(window).height();
    a.css({height: b, "min-height": b})
}, $window = $(window), scrollFade = function (a, b, c) {
    b = void 0 === b ? .5 : b, c = void 0 === c ? 0 : c, $window.scroll(function () {
        {
            var d = $window.scrollTop(), e = .5 * a.parent().parent().outerHeight(), f = a.outerHeight() * -.5 + d * b;
            -1.5 * a.outerHeight() + d * b
        }
        a.css({"-webkit-transform": "translate(0px," + f + "px)", "-moz-transform": "translate(0px," + f + "px)", transform: "translate(0px," + f + "px)", opacity: 1 - d / Math.max(1, 2 * e - e * c)}), a.parent().siblings(".gradient").css({opacity: .5 - d / Math.max(1, 2 * e - e * c)}), a.parent().siblings(".img").css({"-webkit-filter": "grayscale(0" + d / Math.max(1, 2 * e - e * c) + ")"})
    })
}, experience = {page: null, resize: null, init: function () {
        $("#lines").length && this.setLines()
    }, setLines: function () {
        function a() {
            this.x = Math.random() * experience.canvas.width, this.y = Math.random() * experience.canvas.height, this.vx = -.5 + Math.random(), this.vy = -.5 + Math.random(), this.radius = Math.random()
        }
        function b() {
            var b;
            if (c.clearRect(0, 0, experience.canvas.width, experience.canvas.height), f.array.length < 1)
                for (b = 0; b < f.nb; b++)
                    f.array.push(new a);
            for (b = 0; b < f.nb; b++) {
                var d = f.array[b];
                d.create()
            }
            a.line(), a.animate()
        }
        this.canvas = document.querySelector("canvas");
        var c = this.canvas.getContext("2d"), d = "#fff";
        this.canvas.width = window.innerWidth, this.canvas.height = window.innerHeight, this.canvas.style.display = "block", c.fillStyle = d, c.lineWidth = .1, c.strokeStyle = d, this.resize = function () {
            experience.canvas.width = window.innerWidth, experience.canvas.height = window.innerHeight, c.fillStyle = d, c.lineWidth = .1, c.strokeStyle = d
        }, $(window).on("resize", experience.resize);
        var e = {x: 30 * experience.canvas.width / 100, y: 30 * experience.canvas.height / 100}, f = {nb: 250, distance: 80, d_radius: 150, array: []};
        a.prototype = {create: function () {
                c.beginPath(), c.arc(this.x, this.y, this.radius, 0, 2 * Math.PI, !1), c.fill()
            }}, a.animate = function () {
            var a, b;
            for (a = 0; a < f.nb; a++)
                b = f.array[a], b.y < 0 || b.y > experience.canvas.height ? (b.vx = b.vx, b.vy = -b.vy) : (b.x < 0 || b.x > experience.canvas.width) && (b.vx = -b.vx, b.vy = b.vy), b.x += b.vx, b.y += b.vy
        }, a.line = function () {
            var a, b, d, g;
            for (a = 0; a < f.nb; a++)
                for (b = 0; b < f.nb; b++)
                    d = f.array[a], g = f.array[b], d.x - e.x < f.d_radius && d.y - e.y < f.d_radius && d.x - e.x > -f.d_radius && d.y - e.y > -f.d_radius && d.x - g.x < f.distance && d.y - g.y < f.distance && d.x - g.x > -f.distance && d.y - g.y > -f.distance && (c.beginPath(), c.moveTo(d.x, d.y), c.lineTo(g.x, g.y), c.stroke(), c.closePath())
        }, $("#experience").on("mousemove mouseleave", function (a) {
            "mousemove" == a.type && (e.x = a.pageX, e.y = a.pageY), "mouseleave" == a.type && (e.x = experience.canvas.width / 2, e.y = experience.canvas.height / 2)
        }), this.interval = setInterval(b, 1e3 / 30)
    }, destroy: function () {
        this.interval && clearInterval(this.interval), experience.resize && $(window).on("resize", experience.resize)
    }};
experience.init();
var colorone = "linear-gradient(to right bottom, dodgerblue, palevioletred)";
var colortwo = "linear-gradient(to bottom right, #33799d, #e8ebb4)"
var colorthree = "linear-gradient(to bottom right, rgba(41, 36, 132, 0.85), rgba(102, 245, 201, 0.85))";
var colorfour = "linear-gradient(#0d1944, #49aae7)";
var colorfive = "linear-gradient(to bottom, #412f50, #131837)";
var colorsix = "linear-gradient(135deg,  #ff2247, #1e3f9f)";
var colorseven = "linear-gradient(to right bottom, rgba(0, 47, 75, 0.8), rgba(220, 66, 37, 0.8)) whitesmoke";
var coloreight = "linear-gradient(to right bottom, #002f4b, #dc4225)";
var colornine = "linear-gradient(135deg, #723362, #9d223c)";
var colorten = "linear-gradient(45deg, rgb(135, 28, 10) 20%, rgb(252, 124, 15) 61%, rgb(253, 121, 20) 100%)";
var coloreleven = "linear-gradient(#dd879f, #4e337e)";
var colortwelve = "linear-gradient(#8b9da9, #fff6e4)";
var colors = [colorone, colortwo, colorthree, colorfour, colorfive, colorsix, colorseven, coloreight, colornine, colorten, coloreleven, colortwelve], color = colors[Math.floor(Math.random() * colors.length)];
$("div.img").length && $("div.img, a.img").lazyload({threshold: 200, effect: "fadeIn"});