<%--
  Created by IntelliJ IDEA.
  User: Dima
  Date: 28-May-15
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
<html>
<title>The Restaurant | Orders</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<body>
<div class="container">
    <jsp:include page="../tiles/header.jsp"/>
    <div class="OurMenu">
        <style>
            .receipt:after {
                content: "";
                visibility: hidden;
                display: block;
                height: 0;
                clear: both;
            }
        </style>
        <c:forEach items="${loginSet}" var="login">
            <form method="post" action="done">
                <div class="receipt"
                     style="<%--"background-image: url(../../resources/images/38313599.png);background-size: 100%;--%>
                      box-shadow: inset 0px 0px 20px rgba(0,0,0,0.8);">
                    <div class="row">
                        <div class="container">
                            <div class="col-md-2"></div>
                            <div class="col-md-2"><h2>${login}</h2></div>
                            <div class="col-md-4" style="margin: 0px -45px"><h5><strong><u>Dishes</u></strong></h5>
                            </div>
                            <div class="col-md-4" style="margin: 0px 20px "><h5><strong><u>Count</u></strong></h5>
                            </div>
                        </div>
                    </div>
                    <br>
                    <c:forEach items="${showOrders}" var="order">
                        <c:if test="${order.userLogin == login}">
                            <div class="row">
                                <div style="width:67%;" class="container">
                                    <div class="col-md-3"></div>
                                    <div class="col-md-7">${order.name}</div>
                                    <div class="col-md-2">${order.count}</div>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                    <button style="float: right; margin: 0 14%; margin-bottom: 3%;" type="submit" value="submit"
                            class="btn btn-primary">done
                    </button>
                </div>
                <input style="display: none;" type="text" name="getLogin" value="${login}"/>
            </form>
            <br>
        </c:forEach>
    </div>
    <br>


    <div class="clear"></div>
</body>
</html>
