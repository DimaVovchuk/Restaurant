<%@ taglib prefix="cdg" uri="customtags" %>
<!DOCTYPE HTML>
<html lang="ua">
<head>
    <title>The Restaurant | Events</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="${pageContext.request.contextPath}/resources/css/style.css"
          rel="stylesheet" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/resources/css/bjqs.css"
          rel="stylesheet" type="text/css" media="all"/>
    <link href="${pageContext.request.contextPath}/resources/css/demo.css"
          rel="stylesheet" type="text/css" media="all"/>
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
    <script
            src="${pageContext.request.contextPath}/resources/js/bjqs-1.3.min.js"></script>
    <script
            src="${pageContext.request.contextPath}/resources/js/libs/jquery.secret-source.min.js"></script>

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
</head>
<body>
<div class="container">
    <jsp:include page="tiles/header.jsp"/>
    <div class="clear"></div>
    <div class="img-slider">
        <div id="container">
            <div id="banner-fade">
                <ul class="bjqs">
                    <li><img
                            src="${pageContext.request.contextPath}/resources/images/slide1.jpg"
                            title="gallery"/></li>
                    <li><img
                            src="${pageContext.request.contextPath}/resources/images/slide2.jpg"
                            title="gallery"/></li>
                    <li><img
                            src="${pageContext.request.contextPath}/resources/images/slide3.jpg"
                            title="gallery"/></li>
                </ul>
            </div>
        </div>
        <div class="about-grids">
            <div class="about-grid1">
                <h3><cdg:l18n key="events.top"/></h3>
                <img src="${pageContext.request.contextPath}/resources/images/1page_img2.jpg" title="img1"/>

                <p> <cdg:l18n key="events.event1"/></p>
            </div>
            <div class="clear"></div>
            <div class="about-grid1">
                <img src="${pageContext.request.contextPath}/resources/images/1page_img1.jpg" title="img1"/>

                <p><cdg:l18n key="events.event2"/></p>
            </div>
            <div class="clear"></div>
            <div class="about-grid1">
                <img src="${pageContext.request.contextPath}/resources/images/1page_img3.jpg" title="img1"/>

                <p><cdg:l18n key="events.event3"/></p>
            </div>
        </div>

        <div class="about-staff">
            <ul>
                <li><img src="${pageContext.request.contextPath}/resources/images/staff1.jpg" title="staff1"/>

                    <p><cdg:l18n key="events.event4"/></p></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/staff2.jpg" title="staff1"/>

                    <p><cdg:l18n key="events.event5"/></p></li>
                <li><img src="${pageContext.request.contextPath}/resources/images/staff2.jpg" title="staff1"/>

                    <p><cdg:l18n key="events.event6"/></p></li>
            </ul>
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

