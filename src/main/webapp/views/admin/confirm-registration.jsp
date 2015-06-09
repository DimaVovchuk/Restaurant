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
  <form method="post" action="confirm">
    <h3 align="center">Confirm your mail: </h3>
    <input required="required" class="form-control" name="confirm" value="${confirm}"
                  type="text" placeholder="Verification code:">

    <input class="btn btn-primary" type="submit" value="submit">
  </form>
</div>
</html>