<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
      rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/css/bjqs.css"
      rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/css/demo.css"
      rel="stylesheet" type="text/css" media="all"/>
<html>
<title>The Restaurant | Order</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<body>
<div class="container">
    <jsp:include page="../tiles/header.jsp"/>
    <div class="OurMenu">
        <c:choose>
            <c:when test="${(added == 1) || (confirmed == 1) || (prepared == 1)}">
                <div class="row">
                    <div class="col-md-4"><strong>Dishes</strong></div>
                    <div class="col-md-2"><strong>Price</strong></div>
                    <div class="col-md-2"><strong>Count</strong></div>
                    <div class="col-md-2"><strong>Sum</strong></div>
                    <div class="col-md-2"></div>
                </div>
                <br>
            </c:when>
            <c:otherwise>

            </c:otherwise>
        </c:choose>

        <c:forEach items="${orders}" var="order">
            <form method="post" action="delete-order">
                <c:choose>
                    <c:when test="${(order.status == 'added')}">
                        <div class="row">
                            <div class="col-md-4">${order.name}</div>
                            <div class="col-md-2">${order.price}</div>
                            <div class="col-md-2">${order.count}</div>
                            <div class="col-md-2">${order.sum}</div>
                            <div class="col-md-2">
                                <button type="submit" value="submit" class="close"
                                        aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </div>
                    </c:when>
                    <c:when test="${(order.status == 'confirmed')}">
                        <div class="row">
                            <div class="col-md-4">${order.name}</div>
                            <div class="col-md-2">${order.price}</div>
                            <div class="col-md-2">${order.count}</div>
                            <div class="col-md-2">${order.sum}</div>
                        </div>
                    </c:when>
                    <c:when test="${(order.status == 'prepared')}">
                        <div class="row">
                            <div class="col-md-4">${order.name}</div>
                            <div class="col-md-2">${order.price}</div>
                            <div class="col-md-2">${order.count}</div>
                            <div class="col-md-2">${order.sum}</div>
                        </div>
                    </c:when>
                </c:choose>
                <input style="display: none;" type="text" name="id"
                       value="${order.id}"/>
            </form>
        </c:forEach>
    </div>
    <br>
    <c:choose>
    <c:when test="${added == 1}">
    <a href="confirm-order">
        <button style="float: right; margin: 2%;" type="button" class="btn btn-primary">confirm</button>

    </a>
    <H4><label style="float: right">Total <input type="text" name="sum"
                                                 value="${sum}" disabled/></label></H4>
    </c:when>
    <c:when test="${confirmed == 1}">
    <br>
    <h4 style="float: left; margin: 0 80%;">
        <jsp:include page="animation-text.jsp"/>
    </h4>
    <br>
    </c:when>
    <c:when test="${prepared == 1}">
    <a href="pay-order">
        <button style="float: right; margin: 2%;" type="button" class="btn btn-primary">pay</button>
    </a>
    <H4><label style="float: right">Total <input type="text" name="sum"
                                                 value="${sum}" disabled/></label></H4>
    </c:when>
    <c:otherwise>

    </c:otherwise>
    </c:choose>


    <div class="clear"></div>
    <div class="heading">
        <h2 style="margin: 40px;">Old orders</h2>
    </div>
    <div class="OurMenu">
        <c:forEach items="${orders}" var="order">
            <form method="post" action="delete-order">
                <c:choose>
                    <c:when test="${order.status == 'paid'}">
                        <div class="row">
                            <div class="col-md-4">${order.name}</div>
                            <div class="col-md-2">${order.price}</div>
                            <div class="col-md-2">${order.count}</div>
                            <div class="col-md-2">${order.sum}</div>
                            <div class="col-md-2">
                                <input style="display: none;" type="text" name="id"
                                       value="${order.id}"/>
                                <button type="submit" value="submit" class="close"
                                        aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </div>

                    </c:when>
                </c:choose>

            </form>
        </c:forEach>
    </div>
</body>
</html>