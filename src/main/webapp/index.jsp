<!DOCTYPE HTML>
<html lang="ua">
<head>
    <title>The Restaurant | Home </title>
    <meta http-equiv="Content-Type" content="text/html windows-1251"/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.css">
    <link href="resources/css/style.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="resources/css/bjqs.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="resources/css/demo.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href='http://fonts.googleapis.com/css?family=Unica+One'
          rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Aguafina+Script'
          rel='stylesheet' type='text/css'>
    <link
            href='http://fonts.googleapis.com/css?family=Stalemate|Electrolize'
            rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Electrolize'
          rel='stylesheet' type='text/css'>
    <link
            href='http://fonts.googleapis.com/css?family=Source+Code+Pro|Open+Sans:300'
            rel='stylesheet' type='text/css'>

    <script type="text/javascript">
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });

            $('.main-menu').prepend('<div id="menu-icon">Menu</div>');
            /* toggle nav */
            $("#menu-icon").on("click", function () {
                $(".sf-menu").slideToggle();
                $(this).toggleClass("active");
            });
        });
    </script>
    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
    <script src="resources/js/bjqs-1.3.min.js"></script>
    <script src="resources/js/libs/jquery.secret-source.min.js"></script>

    <script type="text/javascript">
        jQuery(function ($) {

            $('.secret-source').secretSource({
                includeTag: false
            });

        });
    </script>
    <script class="secret-source">
        jQuery(document).ready(function ($) {

            $('#banner-fade').bjqs({
                height: 430,
                width: 1000,
                responsive: true
            });

        });
    </script>
    <%@ taglib prefix="cdg" uri="customtags" %>
</head>
<body>
<div class="container">
    <jsp:include page="views/tiles/header.jsp"/>
    <div class="clear"></div>
    <div class="img-slider">
        <div id="container">
            <div id="banner-fade">
                <ul class="bjqs">
                    <li><img src="resources/images/slide1.jpg"
                             title="gallery"/></li>
                    <li><img src="resources/images/slide2.jpg"
                             title="gallery"/></li>
                    <li><img src="resources/images/slide3.jpg"
                             title="gallery"/></li>
                </ul>
            </div>
        </div>
        <div class="grids">
            <div class="grid1">
                <h2><cdg:l18n key="index.welcome.title"/>!</h2>

                <img src="resources/images/1page_img1.jpg">

                <p><cdg:l18n key="index.welcome"/></p>
            </div>
            <div style="margin: 0px 35px;" class="grid1">
                <h2><cdg:l18n key="index.history.title"/></h2>
                <img src="resources/images/1page_img5.jpg">

                <p><cdg:l18n key="index.history"/></p>
            </div>
            <div class="grid1">
                <h2><cdg:l18n key="index.events.title"/></h2>
                <img src="resources/images/1page_img2.jpg">

                <p><cdg:l18n key="index.events"/></p>
            </div>
        </div>
        <div class="clear"></div>
        <div class="main">
            <div class="pin">
                <h2><cdg:l18n key="index.details"/></h2>

                <h2>+38 (093) 4361-963</h2>

            </div>
            <div class="para">
                <p><cdg:l18n key="index.details.text"/></p>

            </div>
        </div>
        <div class="clear"></div>
        <jsp:include page="views/tiles/footer.jsp"/>
    </div>
</div>
</body>
</html>

