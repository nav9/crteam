var BROWSER_AREA_COMPENSATION = 0;//in pixels
var pattern = (new Trianglify).generate(document.body.clientWidth + BROWSER_AREA_COMPENSATION, document.body.clientHeight);
$("#splashScreen").css("background-image", pattern.dataUrl);//draws the triangles in the background

$window = $(window);
experience = {page: null, resize: null, init: function ()
    {
        $("#lines").length && this.setLines();
    },
    setLines: function ()
    {
        function a()
        {
            this.x = Math.random() * experience.canvas.width;
            this.y = Math.random() * experience.canvas.height;
            this.vx = -.5 + Math.random();
            this.vy = -.5 + Math.random();
            this.radius = Math.random();
        }
        function b()
        {
            var b;
            if (c.clearRect(0, 0, experience.canvas.width, experience.canvas.height), f.array.length < 1)
            {
                for (b = 0; b < f.nb; b++) 
                {
                    f.array.push(new a);
                }
            }
            for (b = 0; b < f.nb; b++)
            {
                var d = f.array[b];
                d.create();
            }
            a.line();
            a.animate();
        }
        this.canvas = document.querySelector("canvas");
        var c = this.canvas.getContext("2d"), d = "#fff";
        this.canvas.width = $('#splashScreen').width();//window.innerWidth;
        this.canvas.height = $('#splashScreen').height();//window.innerHeight;

        c.fillStyle = d;
        c.lineWidth = .1;
        c.strokeStyle = d;
        this.resize = function ()
        {
            
            experience.canvas.width = $('#splashScreen').width();//window.innerWidth;
            experience.canvas.height = $('#splashScreen').height();//window.innerHeight;
            c.fillStyle = d;
            c.lineWidth = .1;
            c.strokeStyle = d;
            //refreshes the page so that the abstract triangles are redrawn on
            //the entire screen
            //location.reload();
        };
        $(window).on("resize", experience.resize);

        var e =
                {
                    x: 30 * experience.canvas.width / 100,
                    y: 30 * experience.canvas.height / 100
                };
        f = {nb: 250, distance: 80, d_radius: 150, array: []};
        a.prototype = {create: function ()
            {
                c.beginPath(), c.arc(this.x, this.y, this.radius, 0, 2 * Math.PI, !1), c.fill();
            }};
        a.animate = function ()
        {
            var a, b;
            for (a = 0; a < f.nb; a++)
            {
                b = f.array[a], b.y < 0 || b.y > experience.canvas.height ? (b.vx = b.vx, b.vy = -b.vy) : (b.x < 0 || b.x > experience.canvas.width) && (b.vx = -b.vx, b.vy = b.vy), b.x += b.vx, b.y += b.vy;
            }
        };
        a.line = function ()
        {
            var a, b, d, g;
            for (a = 0; a < f.nb; a++)
            {
                for (b = 0; b < f.nb; b++)
                {
                    d = f.array[a], g = f.array[b], d.x - e.x < f.d_radius && d.y - e.y < f.d_radius && d.x - e.x > -f.d_radius && d.y - e.y > -f.d_radius && d.x - g.x < f.distance && d.y - g.y < f.distance && d.x - g.x > -f.distance && d.y - g.y > -f.distance && (c.beginPath(), c.moveTo(d.x, d.y), c.lineTo(g.x, g.y), c.stroke(), c.closePath());
                }
            }
        };
        $("#experience").on("mousemove mouseleave", function (a)
        {
            "mousemove" === a.type && (e.x = a.pageX, e.y = a.pageY),
            "mouseleave" === a.type && (e.x = experience.canvas.width / 2, e.y = experience.canvas.height / 2);
        });
        this.interval = setInterval(b, 1e3 / 30);
    },
    destroy: function ()
    {
        this.interval && clearInterval(this.interval), experience.resize && $(window).on("resize", experience.resize);
    }};

experience.init();
var colorone = "linear-gradient(to right bottom, dodgerblue, palevioletred)";
var colortwo = "linear-gradient(to bottom right, #33799d, #e8ebb4)";
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

