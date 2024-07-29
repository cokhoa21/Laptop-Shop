<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete user</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <%--    <link rel="stylesheet" href="/css/demo.css">--%>
</head>
<body>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 col-12 mx-auto">
            <div class="d-flex justify-content-between">
                <h3>Delete User ${id}</h3>
            </div>
            <hr />
            <%--@elvariable id="newUser" type=""--%>
            <div class="alert alert-danger">
                Are you sure to delete this user ?
            </div>
            <form:form method="post" action="/admin/user/delete" modelAttribute="newUser">
                <button class="btn btn-danger">Confirm</button>
                <div class="mb-3" style="display: none">
                    <label class="form-label">Id:</label>
                    <form:input type="text" class="form-control" path="id"/>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>