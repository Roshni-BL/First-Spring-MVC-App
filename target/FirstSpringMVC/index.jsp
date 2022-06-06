<html>
<head>
    <%@include file="WEB-INF/views/base.jsp"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center mb-6">Welcome To User Registration App</h1>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th scope="col">User ID</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>Roshni</td>
                    <td>Mali</td>
                    <td>
                        <a href=""><i class="fa-solid fa-trash text-danger" style="font-size: 20px"></i></a>&nbsp; &nbsp;
                        <a href=""><i class="fa-solid fa-user-pen" style="font-size: 20px"></i></a>
                    </td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Arjun</td>
                    <td>Mehra</td>
                    <td>
                        <a href=""><i class="fa-solid fa-trash text-danger" style="font-size: 20px"></i></a>&nbsp; &nbsp;
                        <a href=""><i class="fa-solid fa-user-pen" style="font-size: 20px"></i></a>
                    </td>
                </tr>
<%--                <c:forEach items="${users}" var="user">--%>
<%--                    <tr>--%>
<%--                        <th scope="row">${user.id}</th>--%>
<%--                        <td>${user.firstName}</td>--%>
<%--                        <td>${user.lastName}to</td>--%>
<%--                    </tr>--%>
<%--                </c:forEach>--%>
                </tbody>
            </table>

            <div class="container text-center">
                <a href="/add-user" class="btn btn-outline-success">Add User</a>
            </div>

        </div>

    </div>

</div>

</body>
</html>
