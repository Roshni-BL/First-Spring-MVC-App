<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 03/06/22
  Time: 2:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="base.jsp"%>
<%--    <title>User Registration App</title>--%>
</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <h1 class="text-center md-3">User Registration From</h1>

            <form action="handle-user" method="post">

                <div class="form-group">
                    <label for="firstName"></label>
                    <input type="text" class="form-control" id="firstName" aria-describedby="emailHelp"
                     name="firstName" placeholder="Your First Name">
                </div>

                <div class="form-group">
                    <label for="lastName"></label>
                    <input type="text" class="form-control" id="lastName" aria-describedby="emailHelp"
                           name="lastName" placeholder="Your Last Name">
                </div>

                <div class="container text-center">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
                    <button type="submit" class="btn btn-primary">Add User</button>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>
