<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.css">
<%@ taglib prefix="cdg" uri="customtags" %>
<div class="header">
    <div style="float: left;">
        <form class="form-inline" action="language" method="post">
            <button type="submit" name="lang" value="en">en</button>
            <button type="submit" name="lang" value="ua">ua</button>
        </form>
    </div>
    <div class="logination">
        <c:choose>
            <c:when test="${flag == 1 }">
                <div align="right">
                    <br>
                    <br>
                    <cdg:l18n key="hello"/>, ${login}! <a href="logout">
                    <button type="submit"
                            class="btn btn-primary"><cdg:l18n key="logout"/></button>
                    <c:choose>
                        <c:when test="${conf != 1}">
                            <a href="confirm-page">
                                <button type="button" class="btn btn-primary">Confirm registration</button>
                            </a>
                        </c:when>
                    </c:choose>

                </a>
                </div>
            </c:when>
            <c:when test="${flag == 2}">
                <br>
                <br>

                <form align="right" class="form-inline" action="login" method="post">
                    <div class="form-group">
                        <label><cdg:l18n key="login"/></label> <input name="login"
                                                                      value="${login}" type="text" class="form-control"
                                                                      id="exampleInputLogin"
                                                                      placeholder="login">
                    </div>
                    <br>

                    <div class="form-group">
                        <label><cdg:l18n key="password"/></label> <input
                            name="password" value="${password}" type="password"
                            class="form-control"
                            placeholder="********">
                    </div>
                    <br> <font color="red">${error}</font>
                    <br> <a href="user-create">
                    <button type="button" class="btn btn-default"><cdg:l18n key="register"/></button>
                </a>
                    <button type="submit" class="btn btn-default">Login</button>
                </form>
            </c:when>
            <c:otherwise>
                <br>
                <br>

                <form align="right" class="form-inline" action="login" method="post">
                    <div class="form-group">
                        <label><cdg:l18n key="login"/></label> <input name="login"
                                                                      value="${login}" type="text" class="form-control"
                                                                      placeholder="login">
                    </div>
                    <br>

                    <div class="form-group">
                        <label><cdg:l18n key="password"/></label> <input
                            name="password" value="${password}" type="password"
                            class="form-control"
                            placeholder="********">
                    </div>
                    <br> <a href="user-create">
                    <button type="button" class="btn btn-default"><cdg:l18n key="register"/></button>
                </a>
                    <button type="submit" class="btn btn-default"><cdg:l18n key="login"/></button>
                </form>
            </c:otherwise>
        </c:choose>
    </div>
    <div class="logo">
        <a href="/"><img
                src="../../resources/images/logo.png"
                title="logo"/></a>
    </div>

    <div class="top-menu">
        <c:choose>
            <c:when test="${(admin == 1)&&(conf == 1)}">
                <ul style="padding-bottom: 25px;">
                    <li class="current"><a href="/"><cdg:l18n key="home"/></a></li>
                    <li class="submemu"><a href="events"><cdg:l18n key="events"/></a></li>
                    <li class="submemu"><a href="gallery"><cdg:l18n key="gallery"/></a></li>
                    <li class="submemu"><a href="menu"><cdg:l18n key="menu"/></a></li>
                    <li class="submemu"><a href="show-all"><cdg:l18n key="showUsers"/></a></li>
                    <li class="submemu"><a href="contacts"><cdg:l18n key="contacts"/></a></li>
                </ul>
            </c:when>
            <c:when test="${(admin == 2)&&(conf == 1)}">
                <ul style="padding-bottom: 25px;">
                    <li class="current"><a href="/"><cdg:l18n key="home"/></a></li>
                    <li class="submemu"><a href="order"><cdg:l18n key="order"/></a></li>
                    <li class="submemu"><a href="events"><cdg:l18n key="events"/></a></li>
                    <li class="submemu"><a href="gallery"><cdg:l18n key="gallery"/></a></li>
                    <li class="submemu"><a href="menu"><cdg:l18n key="menu"/></a></li>
                    <li class="submemu"><a href="contacts"><cdg:l18n key="contacts"/></a></li>
                </ul>
            </c:when>
            <c:when test="${(admin == 3)&&(conf == 1)}">
                <ul style="padding-bottom: 25px;">
                    <li class="current"><a href="/"><cdg:l18n key="home"/></a></li>
                    <li class="submemu"><a href="orders"><cdg:l18n key="orders"/></a></li>
                    <li class="submemu"><a href="events"><cdg:l18n key="events"/></a></li>
                    <li class="submemu"><a href="gallery"><cdg:l18n key="gallery"/></a></li>
                    <li class="submemu"><a href="menu"><cdg:l18n key="menu"/></a></li>
                    <li class="submemu"><a href="contacts"><cdg:l18n key="contacts"/></a></li>
                </ul>
            </c:when>
            <c:otherwise>
                <ul style="padding-bottom: 25px; margin: 20px;">
                    <li class="current"><a href="/"><cdg:l18n key="home"/></a></li>
                    <li class="submemu"><a href="events"><cdg:l18n key="events"/></a></li>
                    <li class="submemu"><a href="gallery"><cdg:l18n key="gallery"/></a></li>
                    <li class="submemu"><a href="menu"><cdg:l18n key="menu"/></a></li>
                    <li class="submemu"><a href="contacts"><cdg:l18n key="contacts"/></a></li>
                </ul>
            </c:otherwise>
        </c:choose>
    </div>
</div>
