<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Add user</title>
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
</head>
<div class="container">
    <jsp:include page="../tiles/header.jsp"/>
    <form method="post" action="user-create">
        <h3 align="center">Create new account</h3>
        <c:choose>
            <c:when test="${login_conf == 1}">
                <p style="color: red">Login like this in already registered</p>
            </c:when>
        </c:choose>
        Login* <input pattern="^[^<>/{}\s?!;]+$" required="required" class="form-control" name="login" value="${login}"
                      type="text" placeholder="Login:">
        Password*
        <input pattern
                       ="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
               title="Not less than 8 characters, contain at least one number and symbols of upper and lower case from english alphabet"
               required="required" class="form-control" name="password" value="${password}"
               type="password" placeholder="********">
        Name <input pattern="^[^<>/{}\s?!;]+$" class="form-control" name="name" value="${name}" type="text"
                    placeholder="Name:">
        Surname <input pattern="^[^<>/{}\s?!;]+$" class="form-control" name="surname" value="${surname}" type="text"
                       placeholder="Surname:">
        <c:choose>
            <c:when test="${email_conf == 1}">
                <p style="color: red">Email like this in already registered</p>
            </c:when>
        </c:choose>
        Email* <input type="email" required="required" class="form-control" name="email"
                      value="${email}" type="text" placeholder="Email:">
        Phone number* <input type="number" required="required" class="form-control" name="phoneNumber"
                             value="${phoneNumber}" type="text" placeholder="Phone number:">
        <br>
        <input class="btn btn-primary" type="submit" value="submit">
    </form>
</div>
</html>