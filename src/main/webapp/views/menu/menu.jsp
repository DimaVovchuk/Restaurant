<!DOCTYPE HTML>
<html>
<head>
    <title>The Restaurant | Menu</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="cdg" uri="customtags" %>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.css">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

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
    <jsp:include page="../tiles/header.jsp"/>
    <div class="clear"></div>
    <div class="img-slider">
        <div id="container">
            <!--  Outer wrapper for presentation only, this can be anything you like -->
            <div id="banner-fade">
                <!-- start Basic Jquery Slider -->
                <ul class="bjqs">
                    <li><img
                            src="${pageContext.request.contextPath}/resources/images/slide1.jpg"
                            title="delishes"/></li>
                    <li><img
                            src="${pageContext.request.contextPath}/resources/images/slide2.jpg"
                            title="delishes"/></li>
                    <li><img
                            src="${pageContext.request.contextPath}/resources/images/slide3.jpg"
                            title="delishes"/></li>
                </ul>
                <!-- end Basic jQuery Slider -->
            </div>
        </div>
    </div>
    <div class="grids">
        <div class="lists">
            <div class="heading">
                <h2>Our Menu</h2>
            </div>
            <div class="OurMenu">
                <c:choose>
                    <c:when test="${admin == 1}">
                        <div style="padding-bottom: 50px;">
                            <div class="col-md-3"><h5><strong>Name:</strong></h5></div>
                            <div class="col-md-1"><h5><strong>Price:</strong></h5></div>
                            <div class="col-md-6"><h5><strong>Description:</strong></h5></div>
                            <c:choose>
                                <c:when test="${conf == 1}">
                                    <div class="col-md-1">
                                        <h6><strong>Count:</strong></h6>
                                    </div>
                                </c:when>
                            </c:choose>
                        </div>
                        <c:forEach items="${dishes}" var="dish">
                            <c:choose>
                                <c:when test="${dish.type.equals('DISH')}">
                                    <form onsubmit='return false' method="post" action="delete-dish">
                                        <div style="padding-bottom: 50px;">
                                            <div class="col-md-3">${dish.name}<br></div>
                                            <div class="col-md-1">$${dish.price}<br></div>
                                            <div class="col-md-6">${dish.description}<br></div>
                                            <div class="col-md-1">
                                                <input name="id" value="${dish.id}" type="text"
                                                       style="display: none">

                                                <button onclick=' confirm("Are you sure?") ? this.form.submit() : ""'
                                                        type="submit" value="submit" class="close"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                        </div>
                                        <br>
                                    </form>
                                </c:when>
                            </c:choose>
                        </c:forEach>

                        <div class="clear"></div>
                        <div class="heading">
                            <h2 style="margin: 40px;">List Of Beverages</h2>
                        </div>
                        <div style="padding-bottom: 50px;">
                            <div class="col-md-3"><h5><strong>Name:</strong></h5></div>
                            <div class="col-md-1"><h5><strong>Price:</strong></h5></div>
                            <div class="col-md-6"><h5><strong>Description:</strong></h5></div>
                            <c:choose>
                                <c:when test="${conf == 1}">
                                    <div class="col-md-1">
                                        <h6><strong>Count:</strong></h6>
                                    </div>
                                </c:when>
                            </c:choose>
                        </div>
                        <c:forEach items="${dishes}" var="dish">
                            <c:choose>
                                <c:when test="${dish.type.equals('DRINK')}">
                                    <form onsubmit='return false' method="post" action="delete-dish">

                                        <div style="padding-bottom: 50px;">
                                            <div class="col-md-3">${dish.name}</div>
                                            <div class="col-md-1">$${dish.price}</div>
                                            <div class="col-md-6">${dish.description}</div>
                                            <div class="col-md-1">
                                                <input name="id" value="${dish.id}" type="text"
                                                       style="display: none">

                                                <button onclick=' confirm("Are you sure?") ? this.form.submit() : ""'
                                                        type="submit" value="submit" class="close"
                                                        aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </c:when>
                            </c:choose>
                        </c:forEach>

                        <div style="margin:0 4px;display: inline-block">
                            <c:choose>
                                <c:when test="${admin == 1}">
                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                            data-target="#myModal"><cdg:l18n key="order.button.addDish"/>
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button class="btn btn-primary btn-lg" type="submit"
                                            value="submit"><cdg:l18n key="order.button"/>
                                    </button>
                                </c:otherwise>
                            </c:choose>


                        </div>
                    </c:when>
                    <c:otherwise>

                        <form method="post" action="add-to-order">
                            <div style="padding-bottom: 50px;">
                                <div class="col-md-3"><h5><strong>Name:</strong></h5></div>
                                <div class="col-md-1"><h5><strong>Price:</strong></h5></div>
                                <div class="col-md-6"><h5><strong>Description:</strong></h5></div>
                                <c:choose>
                                    <c:when test="${conf == 1}">
                                        <div class="col-md-1">
                                            <h6><strong>Count:</strong></h6>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </div>
                            <c:forEach items="${dishes}" var="dish">
                                <c:choose>
                                    <c:when test="${dish.type.equals('DISH')}">
                                        <div style="padding-bottom: 50px;">
                                            <div class="col-md-3">${dish.name}</div>
                                            <div class="col-md-1">$${dish.price}</div>
                                            <div class="col-md-6">${dish.description}</div>
                                            <c:choose>
                                                <c:when test="${conf == 1}">
                                                    <div class="col-md-1">
                                                        <input name="count" value="0" type="number"
                                                               style="width: 70px;" step="1">
                                                        <input name="name" value="${dish.name}" type="text"
                                                               style="display: none">
                                                    </div>
                                                </c:when>
                                            </c:choose>
                                        </div>

                                        <br>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                            <div class="clear"></div>
                            <div class="heading">
                                <h2 style="margin: 40px;">List Of Beverages</h2>
                            </div>
                            <div style="padding-bottom: 50px;">
                                <div class="col-md-3"><h5><strong>Name:</strong></h5></div>
                                <div class="col-md-1"><h5><strong>Price:</strong></h5></div>
                                <div class="col-md-6"><h5><strong>Description:</strong></h5></div>
                                <c:choose>
                                    <c:when test="${conf == 1}">
                                        <div class="col-md-1">
                                            <h6><strong>Count:</strong></h6>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </div>
                            <c:forEach items="${dishes}" var="dish">
                                <c:choose>
                                    <c:when test="${dish.type.equals('DRINK')}">
                                        <div style="padding-bottom: 50px;">
                                            <div class="col-md-3">${dish.name}</div>
                                            <div class="col-md-1">$${dish.price}</div>
                                            <div class="col-md-6">${dish.description}</div>
                                            <c:choose>
                                                <c:when test="${conf == 1}">
                                                    <div class="col-md-1">
                                                        <input name="count" value="0" type="number"
                                                               style="width: 70px;" step="1">
                                                        <input name="name" value="${dish.name}" type="text"
                                                               style="display: none">
                                                    </div>
                                                </c:when>
                                            </c:choose>
                                        </div>
                                    </c:when>
                                </c:choose>
                            </c:forEach>

                            <div style="margin:0 0px;display: inline-block">

                                <c:choose>
                                    <c:when test="${admin == 1}">
                                        <!-- Trigger the modal with a button -->
                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
                                                data-target="#myModal"><cdg:l18n key="order.button.addDish"/>
                                        </button>
                                    </c:when>
                                    <c:when test="${conf == 1}">
                                        <button style="position: absolute ;right: 100px" class="btn btn-primary btn-lg"
                                                type="submit"
                                                value="submit"><cdg:l18n key="order.button"/>
                                        </button>
                                    </c:when>
                                </c:choose>
                            </div>
                        </form>

                    </c:otherwise>
                </c:choose>
                <br>

                <div class="clear"></div>
                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close"
                                        data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><cdg:l18n key="order.button.addDish"/> </h4>
                            </div>

                            <form id="add-dish" method="post" action="add-dish">
                                <div class="modal-body">
                                    name* <input class="form-control" required="required" name="name"
                                                 value="${name}" type="text"
                                                 placeholder="name">
                                    description* <input class="form-control" required="required"
                                                        name="description"
                                                        value="${description}" type="text"
                                                        placeholder="description">
                                    price* <input type="number" step="any" required="required"
                                                  class="form-control" name="price"
                                                  value="${price}" type="text" placeholder="price">
                                    <label><input type="radio" required="required" name="type" value="dish">
                                        dish</label>
                                    <label><input type="radio" required="required" name="type" value="drink">
                                        drink</label>
                                    <br>
                                    <input class="btn btn-primary" type="submit" value="submit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="clear"></div>
    <div class="footer-menu">


        <jsp:include page="../tiles/footer.jsp"/>
    </div>

</div>
</body>
</html>

