<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <title>The Restaurant | Gallery</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="${pageContext.request.contextPath}/resources/css/bjqs.css" rel="stylesheet" type="text/css"
          media="all"/>
    <link href="${pageContext.request.contextPath}/resources/css/demo.css" rel="stylesheet" type="text/css"
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
    <script src="${pageContext.request.contextPath}/resources/js/bjqs-1.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.secret-source.min.js"></script>

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
    <jsp:include page="tiles/header.jsp"/>
    <div class="grids">
        <div class="heading">
            <h2><cdg:l18n key="gallary"/></h2>
        </div>
        <ul>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img1.jpg"
                     title="Gallery-img1"/></li>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img2.jpg"
                     title="Gallery-img1"/></li>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img3.jpg"
                     title="Gallery-img1"/></li>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img4.jpg"
                     title="Gallery-img1"/></li>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img5.jpg"
                     title="Gallery-img1"/></li>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img6.jpg"
                     title="Gallery-img1"/></li>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img7.jpg"
                     title="Gallery-img1"/></li>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img1.jpg"
                     title="Gallery-img1"/></li>
            <li><img src="${pageContext.request.contextPath}/resources/images/1page_img4.jpg"
                     title="Gallery-img1"/></li>
        </ul>
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
    <div class="footer">
        <div class="footer-menu">
            <jsp:include page="tiles/footer.jsp"/>
        </div>
    </div>


</div>

</body>
</html>

