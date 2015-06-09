<%@ taglib prefix="cdg" uri="customtags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML >
<html>
<head>
    <title>The Restaurant | Contacts</title>
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
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

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
            <!--  Outer wrapper for presentation only, this can be anything you like -->
            <div id="banner-fade">
                <!-- start Basic Jquery Slider -->
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
                <!-- end Basic jQuery Slider -->
            </div>
        </div>
        <div class="grids">
            <div class="contact">
                <div class="slider-1">
                    <h3><cdg:l18n key="contact.info"/></h3>

                    <div class="map">
                        <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2573.9352215352137!2d24.011397085241946!3d49.824882694313864!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x473ae7862bf6fa15%3A0xa4699edd6ff650d6!2z0LLRg9C7LiDQkNC60LDQtNC10LzRltC60LAg0JDQvdC00YDRltGPINCh0LDRhdCw0YDQvtCy0LAsIDIzLCDQm9GM0LLRltCyLCDQm9GM0LLRltCy0YHRjNC60LAg0L7QsdC70LDRgdGC0YwsINCj0LrRgNCw0LjQvdCw!5e0!3m2!1sru!2sru!4v1432502753011"
                                width="400" height="300" frameborder="0" style="border: 0"></iframe>
                        <br/>
                        <small><a
                                href="https://www.google.ru/maps/place/%D0%B2%D1%83%D0%BB.+%D0%90%D0%BA%D0%B0%D0%B4%D0%B5%D0%BC%D1%96%D0%BA%D0%B0+%D0%90%D0%BD%D0%B4%D1%80%D1%96%D1%8F+%D0%A1%D0%B0%D1%85%D0%B0%D1%80%D0%BE%D0%B2%D0%B0,+23,+%D0%9B%D1%8C%D0%B2%D1%96%D0%B2,+%D0%9B%D1%8C%D0%B2%D1%96%D0%B2%D1%81%D1%8C%D0%BA%D0%B0+%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C,+%D0%A3%D0%BA%D1%80%D0%B0%D0%B8%D0%BD%D0%B0/@49.8248827,24.0113971,17z/data=!4m2!3m1!1s0x473ae7862bf6fa15:0xa4699edd6ff650d6"
                                style="color: #0000FF; text-align: left">View Larger Map</a></small>
                    </div>
                    <div class="grids">
                        <h4>Restourant</h4>
                        <br> <span>Lviv,Saharova street, 23</span><br> <span>Telephone:
								+380 934 361 963</span> <br> <span>email:<a
                            href="Dima_Vovchuk@inbox.ru">Dima_Vovchuk@inbox.ru </a></span>
                    </div>
                </div>
                <div class="slider-2">
                    <h3><cdg:l18n key="contact.feedback"/></h3>
                    <c:choose>
                        <c:when test="${sent == 1}">
                            <H3><cdg:l18n key="contact.feedback.message"/></H3>
                        </c:when>
                        <c:otherwise>
                            <form method="post" action="sendMail">
                                <div class="table-form">
                                    <table cellspacing="8">
                                        <tbody>
                                        <c:choose>
                                            <c:when test="${flag != 1}">
                                                <tr>
                                                    <td colspan="6"><input pattern="^[^<>/{}\s?!;]+$" required="required"
                                                                           class="form-control" name="name"
                                                                           value="${name}" type="text" placeholder="Name:"></td>
                                                </tr>
                                                <tr>
                                                    <td colspan="6"><input
                                                            style="width: 345px; height: 40px;  margin-bottom: 20px; padding-left: 18px;  "
                                                            required="required" class="form-control" name="email"
                                                            value="${email}" type="email" placeholder="Email:"></td>
                                                    <br>
                                                </tr>
                                            </c:when>
                                        </c:choose>

                                        <tr>
                                            <td colspan="6"><input pattern="^[^<>/{}\s?!;]+$" required="required"
                                                                   class="form-control" name="subject"
                                                                   value="${subject}" type="text"
                                                                   placeholder="Subject:"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="6"> <textarea style="width: 600px; height: 150px"
                                                                       name="message"
                                                                       id="message" required="required"
                                                                       class="form-control" rows="3"
                                                                       placeholder="Message:"></textarea></td>
                                        </tr>
                                        <td>
                                        </tbody>
                                    </table>
                                    <div class="Button-form">
                                        <ul>
                                            <li><input type="submit"></li>
                                            <li><input type="reset"></li>
                                        </ul>

                                    </div>
                                </div>
                            </form>
                        </c:otherwise>
                    </c:choose>


                </div>

                <div class="clear"></div>

            </div>

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

