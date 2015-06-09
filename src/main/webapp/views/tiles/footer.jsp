<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.css">
<%@ taglib prefix="cdg" uri="customtags" %>
	<div class="footer">
				<div class="footer-menu">
					<c:choose>
						<c:when test="${admin == 1}">
							<ul style="padding-bottom: 25px;">
								<li class="current"><a href="/"><cdg:l18n key="home"/></a></li>
								<li class="submemu"><a href="events"><cdg:l18n key="events"/></a></li>
								<li class="submemu"><a href="gallery"><cdg:l18n key="gallery"/></a></li>
								<li class="submemu"><a href="menu"><cdg:l18n key="menu"/></a></li>
								<li class="submemu"><a href="show-all"><cdg:l18n key="showUsers"/></a></li>
								<li class="submemu"><a href="contacts"><cdg:l18n key="contacts"/></a></li>
							</ul>
						</c:when>
						<c:when test="${admin == 2}">
							<ul style="padding-bottom: 25px;">
								<li class="current"><a href="/"><cdg:l18n key="home"/></a></li>
								<li class="submemu"><a href="order"><cdg:l18n key="order"/></a></li>
								<li class="submemu"><a href="events"><cdg:l18n key="events"/></a></li>
								<li class="submemu"><a href="gallery"><cdg:l18n key="gallery"/></a></li>
								<li class="submemu"><a href="menu"><cdg:l18n key="menu"/></a></li>
								<li class="submemu"><a href="contacts"><cdg:l18n key="contacts"/></a></li>
							</ul>
						</c:when>
						<c:when test="${admin == 3}">
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
	
	
	
	