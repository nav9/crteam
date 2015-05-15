
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<!doctype html>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>CRTeam</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <!--______________ CSS ______________-->
    <link rel="stylesheet" href="css/normalize.min.css">
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="css/verticalTimeline.css"> <!-- Resource style -->

    <!--______________ JavaScript ______________-->
    <!--<script src="js/lib/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    <script src="js/lib/d3.v3.js"></script>-->

    <!-- it works the same with all jquery version from 1.x to 2.x -->
    <script type="text/javascript" src="js/lib/jquery-1.11.2.js"></script>
    <!-- use jssor.slider.mini.js (40KB) instead for release -->
    <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="js/lib/jssor.js"></script>
    <script type="text/javascript" src="js/lib/jssor.slider.js"></script>


<body>
    <!--[if lt IE 9]>
             <div class="browserupgrade">
                         <img id="caveman" src="img/caveman.jpg" alt="caveman">
         </div>
 
         <p class="browserupgrade">
                 <br>
                 Oops!!! You are using an <strong>outdated</strong> browser. 
                 <br>
                 Please install a <a href="http://browsehappy.com/">more modern browser</a> right away!
         <br>
         <br>		
         </p>
         <p class="additionalMessage">Using an outdated browser is also a security risk. Please upgrade and return to CRTeam's website. Have a nice day!!! :-)</p>
 
         <![endif]-->
    <div id="page-wrap">
        <div id="mainmenu">
            <ul>
                <li class='active'><a href='index.html'>Home</a></li>
                <li><a href='mumbai.html'>Mumbai</a></li>
                <li><a href='bangalore.html'>Bangalore</a></li>
                <li><a href='delhi.html'>Delhi</a></li>
                <li><a href='shelp.html'>S-Help</a></li>
                <li><a href='team.html'>Team</a></li>
                <li><a href='crheroes.html'>CR Heroes</a></li>
                <li><a id="interactmenu" href='interact.html'>Interact</a></li>
            </ul>
            <img id="teamLogo" class="rotateit" src="img/invertedCRLogo.png" alt="team logo">
        </div>          

        <div id="timelineHolder">
            <h5 style="margin-left:50px;">A thousand words...</h5> 
            <script>
                jQuery(document).ready(function($) {
                    var _SlideshowTransitions = [
                        //Zoom- in
                        {$Duration: 1200, $Zoom: 1, $Easing: {$Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseOutQuad}, $Opacity: 2},
                        //Zoom+ out
                        {$Duration: 1000, $Zoom: 11, $SlideOut: true, $Easing: {$Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear}, $Opacity: 2},
                        //Rotate Zoom- in
                        {$Duration: 1200, $Zoom: 1, $Rotate: 1, $During: {$Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8]}, $Easing: {$Zoom: $JssorEasing$.$EaseSwing, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseSwing}, $Opacity: 2, $Round: {$Rotate: 0.5}},
                        //Rotate Zoom+ out
                        {$Duration: 1000, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: {$Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo}, $Opacity: 2, $Round: {$Rotate: 0.8}},
                        //Zoom HDouble- in
                        {$Duration: 1200, x: 0.5, $Cols: 2, $Zoom: 1, $Assembly: 2049, $ChessMode: {$Column: 15}, $Easing: {$Left: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear}, $Opacity: 2},
                        //Zoom HDouble+ out
                        {$Duration: 1200, x: 4, $Cols: 2, $Zoom: 11, $SlideOut: true, $Assembly: 2049, $ChessMode: {$Column: 15}, $Easing: {$Left: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear}, $Opacity: 2},
                        //Rotate Zoom- in L
                        {$Duration: 1200, x: 0.6, $Zoom: 1, $Rotate: 1, $During: {$Left: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8]}, $Easing: {$Left: $JssorEasing$.$EaseSwing, $Zoom: $JssorEasing$.$EaseSwing, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseSwing}, $Opacity: 2, $Round: {$Rotate: 0.5}},
                        //Rotate Zoom+ out R
                        {$Duration: 1000, x: -4, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: {$Left: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo}, $Opacity: 2, $Round: {$Rotate: 0.8}},
                        //Rotate Zoom- in R
                        {$Duration: 1200, x: -0.6, $Zoom: 1, $Rotate: 1, $During: {$Left: [0.2, 0.8], $Zoom: [0.2, 0.8], $Rotate: [0.2, 0.8]}, $Easing: {$Left: $JssorEasing$.$EaseSwing, $Zoom: $JssorEasing$.$EaseSwing, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseSwing}, $Opacity: 2, $Round: {$Rotate: 0.5}},
                        //Rotate Zoom+ out L
                        {$Duration: 1000, x: 4, $Zoom: 11, $Rotate: 1, $SlideOut: true, $Easing: {$Left: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo}, $Opacity: 2, $Round: {$Rotate: 0.8}},
                        //Rotate HDouble- in
                        {$Duration: 1200, x: 0.5, y: 0.3, $Cols: 2, $Zoom: 1, $Rotate: 1, $Assembly: 2049, $ChessMode: {$Column: 15}, $Easing: {$Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseOutQuad, $Rotate: $JssorEasing$.$EaseInCubic}, $Opacity: 2, $Round: {$Rotate: 0.7}},
                        //Rotate HDouble- out
                        {$Duration: 1000, x: 0.5, y: 0.3, $Cols: 2, $Zoom: 1, $Rotate: 1, $SlideOut: true, $Assembly: 2049, $ChessMode: {$Column: 15}, $Easing: {$Left: $JssorEasing$.$EaseInExpo, $Top: $JssorEasing$.$EaseInExpo, $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo}, $Opacity: 2, $Round: {$Rotate: 0.7}},
                        //Rotate VFork in
                        {$Duration: 1200, x: -4, y: 2, $Rows: 2, $Zoom: 11, $Rotate: 1, $Assembly: 2049, $ChessMode: {$Row: 28}, $Easing: {$Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseOutQuad, $Rotate: $JssorEasing$.$EaseInCubic}, $Opacity: 2, $Round: {$Rotate: 0.7}},
                        //Rotate HFork in
                        {$Duration: 1200, x: 1, y: 2, $Cols: 2, $Zoom: 11, $Rotate: 1, $Assembly: 2049, $ChessMode: {$Column: 19}, $Easing: {$Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseOutQuad, $Rotate: $JssorEasing$.$EaseInCubic}, $Opacity: 2, $Round: {$Rotate: 0.8}}
                    ];

                    var options = {
                        $AutoPlay: true, //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                        $AutoPlayInterval: 1500, //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                        $PauseOnHover: 1, //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                        $DragOrientation: 3, //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)
                        $ArrowKeyNavigation: true, //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                        $SlideDuration: 600, //Specifies default duration (swipe) for slide in milliseconds

                        $SlideshowOptions: {//[Optional] Options to specify and enable slideshow or not
                            $Class: $JssorSlideshowRunner$, //[Required] Class to create instance of slideshow
                            $Transitions: _SlideshowTransitions, //[Required] An array of slideshow transitions to play slideshow
                            $TransitionsOrder: 1, //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                            $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                        },
                        $ArrowNavigatorOptions: {//[Optional] Options to specify and enable arrow navigator or not
                            $Class: $JssorArrowNavigator$, //[Requried] Class to create arrow navigator instance
                            $ChanceToShow: 1, //[Required] 0 Never, 1 Mouse Over, 2 Always
                            $AutoCenter: 2, //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                            $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
                        },
                        $ThumbnailNavigatorOptions: {//[Optional] Options to specify and enable thumbnail navigator or not
                            $Class: $JssorThumbnailNavigator$, //[Required] Class to create thumbnail navigator instance
                            $ChanceToShow: 2, //[Required] 0 Never, 1 Mouse Over, 2 Always

                            $ActionMode: 1, //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                            $Lanes: 2, //[Optional] Specify lanes to arrange thumbnails, default value is 1
                            $SpacingX: 14, //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
                            $SpacingY: 12, //[Optional] Vertical space between each thumbnail in pixel, default value is 0
                            $DisplayPieces: 6, //[Optional] Number of pieces to display, default value is 1
                            $ParkingPosition: 156, //[Optional] The offset position to park thumbnail
                            $Orientation: 2                                //[Optional] Orientation to arrange thumbnails, 1 horizental, 2 vertical, default value is 1
                        }
                    };

                    var jssor_slider1 = new $JssorSlider$("slider1_container", options);
                    //responsive code begin
                    //you can remove responsive code if you don't want the slider scales while window resizes
                    function ScaleSlider() {
                        var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                        if (parentWidth)
                            jssor_slider1.$ScaleWidth(Math.max(Math.min(parentWidth, 960), 300));
                        else
                            window.setTimeout(ScaleSlider, 30);
                    }
                    ScaleSlider();

                    $(window).bind("load", ScaleSlider);
                    $(window).bind("resize", ScaleSlider);
                    $(window).bind("orientationchange", ScaleSlider);
                    //responsive code end
                });
            </script>
            <!-- Jssor Slider Begin -->
            <!-- You can move inline styles to css file or css block. -->
            <div id="slider1_container" style="position: relative; top: 0px; left: 150px; width: 960px; 
                 height: 480px; background: #191919; overflow: hidden;">

                <!-- Loading Screen -->
                <div u="loading" style="position: absolute; top: 0px; left: 0px;">
                    <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                         background-color: #000000; top: 0px; left: 0px;width: 100%;height:100%;">
                    </div>
                    <div style="position: absolute; display: block; background: url(img/loading.gif) no-repeat center center;
                         top: 0px; left: 0px;width: 100%;height:100%;">
                    </div>
                </div>

                <!-- Slides Container -->
                <div u="slides" style="cursor: move; position: absolute; left: 240px; top: 0px; width: 720px; height: 480px; overflow: hidden;">

                    <%File file;

                      int i;
						 
						  
                    if(request.getParameter("fpath") != null) 
                    {
						
                            File f = new File ( getServletContext().getRealPath("/")+request.getParameter("fpath"));

							
                            if (f.exists()) {
                                       File[] files = f.listFiles();  
                                       for(i=0;i<((files.length-1));i=i+2){ 
                                                    String tfile = files[i].getName();
                                                    String ifile = files[i+1].getName();
                                                    String foldername=request.getParameter("fpath");
                                                    String filenamepath=foldername+"/"+ifile;
                                                    String tfilenamepath=foldername+"/"+tfile;
										
                    %>
                    <div>
                        <img u="image" src="<%=filenamepath%>" />
                        <img u="thumb" src="<%=tfilenamepath%>" />
                    </div>
                    <%}%>
                    <%}%>
                    <%}
                    else{out.println("Oops!!! Something seems to be wrong. Please contact your system administrator or crteam members.");}
							
                    %>
                </div>
                <!-- Arrow Navigator Skin Begin -->
                <style>
                    /* jssor slider arrow navigator skin 05 css */
                    /*
                    .jssora05l              (normal)
                    .jssora05r              (normal)
                    .jssora05l:hover        (normal mouseover)
                    .jssora05r:hover        (normal mouseover)
                    .jssora05ldn            (mousedown)
                    .jssora05rdn            (mousedown)
                    */
                    .jssora05l, .jssora05r, .jssora05ldn, .jssora05rdn
                    {
                        position: absolute;
                        cursor: pointer;
                        display: block;
                        background: url(img/a17.png) no-repeat;
                        overflow:hidden;
                    }
                    .jssora05l { background-position: -10px -40px; }
                    .jssora05r { background-position: -70px -40px; }
                    .jssora05l:hover { background-position: -130px -40px; }
                    .jssora05r:hover { background-position: -190px -40px; }
                    .jssora05ldn { background-position: -250px -40px; }
                    .jssora05rdn { background-position: -310px -40px; }
                </style>
                <!-- Arrow Left -->
                <span u="arrowleft" class="jssora05l" style="width: 40px; height: 40px; top: 158px; left: 248px;">
                </span>
                <!-- Arrow Right -->
                <span u="arrowright" class="jssora05r" style="width: 40px; height: 40px; top: 158px; right: 8px">
                </span>
                <!-- Arrow Navigator Skin End -->

                <!-- Thumbnail Navigator Skin 02 Begin -->
                <div u="thumbnavigator" class="jssort02" style="position: absolute; width: 240px; height: 480px; left:0px; bottom: 0px;">

                    <!-- Thumbnail Item Skin Begin -->
                    <style>
                        /* jssor slider thumbnail navigator skin 02 css */
                        /*
                        .jssort02 .p            (normal)
                        .jssort02 .p:hover      (normal mouseover)
                        .jssort02 .pav          (active)
                        .jssort02 .pav:hover    (active mouseover)
                        .jssort02 .pdn          (mousedown)
                        */
                        .jssort02 .w
                        {
                            position: absolute;
                            top: 0px;
                            left: 0px;
                            width: 100%;
                            height: 100%;
                        }
                        .jssort02 .c
                        {
                            position: absolute;
                            top: 0px;
                            left: 0px;
                            width: 95px;
                            height: 62px;
                        }
                        .jssort02 .p:hover .c, .jssort02 .pav:hover .c, .jssort02 .pav .c 
                        {
                            background: url(img/t01.png) center center;
                            border-width: 0px;
                            top: 2px;
                            left: 2px;
                            width: 95px;
                            height: 62px;
                        }
                        .jssort02 .p:hover .c, .jssort02 .pav:hover .c
                        {
                            top: 0px;
                            left: 0px;
                            width: 97px;
                            height: 64px;
                            border: #fff 1px solid;
                        }
                    </style>
                    <div u="slides" style="cursor: move;">
                        <div u="prototype" class="p" style="position: absolute; width: 99px; height: 66px; top: 0; left: 0;">
                            <div class=w><div u="thumbnailtemplate" style=" width: 100%; height: 100%; border: none;position:absolute; top: 0; left: 0;"></div></div>
                            <div class=c>
                            </div>
                        </div>
                    </div>
                    <!-- Thumbnail Item Skin End -->
                </div>
                <!-- Thumbnail Navigator Skin End -->
                <a style="display: none" href="http://www.jssor.com">jQuery Carousel</a>
            </div>
            <!-- Jssor Slider End -->
            <br>
        </div>
    </div>
</body>
</html>
