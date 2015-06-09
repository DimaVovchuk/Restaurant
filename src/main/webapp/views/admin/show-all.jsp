<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet"
      href="http://cdn.datatables.net/plug-ins/1.10.7/integration/bootstrap/3/dataTables.bootstrap.css">
<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script src="http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
<script src="http://cdn.datatables.net/plug-ins/1.10.7/integration/bootstrap/3/dataTables.bootstrap.js"></script>
<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.css">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
      rel="stylesheet" type="text/css" media="all"/>
<link href="${pageContext.request.contextPath}/resources/css/bjqs.css"
      rel="stylesheet" type="text/css" media="all"/>
<script src="${pageContext.request.contextPath}/resources/js/sort.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/demo.css"
      rel="stylesheet" type="text/css" media="all"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
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
<title>The Restaurant | Users</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<body>
<div class="container">
    <jsp:include page="../tiles/header.jsp"/>
    <script>
        $(document).ready(function () {
            $('#example').dataTable();
        });
    </script>
    <table style="font-family: Helvetica, Arial, sans-serif" class="spc table table-striped table-hover" border="0"
           cellspacing="2" cellpadding="2" width="98%">
        <tr>
            <td><strong>Id</strong></td>
            <td class="thd" onclick="sort(this)" title="click for sort"><strong>Name:</strong></td>
            <td class="thd" onclick="sort(this)" title="click for sort"><strong>Surname:</strong></td>
            <td><strong>Phone number:</strong></td>
            <td onclick="sort(this)" title="click for sort"><strong>Login:</strong></td>
            <td><strong>Password:</strong></td>
            <td class="thd" onclick="sort(this)" title="click for sort"><strong>Role:</strong></td>
            <td><strong>Email:</strong></td>
            <td><strong>Confirm:</strong></td>
        </tr>
        <c:forEach items="${users}" var="user">
            <form onsubmit='return false' method="post" action="delete-user">
                <tr>
                    <input style="display: none;" type="text" name="id" value="${user.id}"/>
                    <td align="left">${user.id}</td>
                    <td align="left">${user.name}</td>
                    <td align="left">${user.surname}</td>
                    <td align="left">${user.phoneNumber}</td>
                    <td align="left">${user.login}</td>
                    <td align="left">${user.password}</td>
                    <td align="left">${user.role}</td>
                    <td align="left">${user.email}</td>
                    <td align="left">${user.confirm}</td>
                    <td align="left">
                        <button onclick=' confirm("Are you sure?") ? this.form.submit() : ""'
                                type="submit" value="submit" class="close"
                                aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </td>
                </tr>
            </form>
        </c:forEach>
    </table>
    <a href="user-create">
        <button type="submit" class="btn btn-primary">new
            user
        </button>
    </a>
    <!-- Trigger the modal with a button -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">change role</button>

    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Change role</h4>
                </div>

                <form id="change-role" method="post" action="change-role">
                    <div class="modal-body">
                        <label><input type="text" class="form-control" name="login" placeholder="Input login"></label>
                        <br>
                        <label><input type="radio" name="role" value="admin"> administrator</label>
                        <label><input type="radio" name="role" value="user"> user</label>
                        <label><input type="radio" name="role" value="kitchen"> kitchen</label>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    </a>
</div>
</body>
</html>