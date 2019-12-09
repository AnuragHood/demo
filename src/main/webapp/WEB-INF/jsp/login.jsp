<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log in with your account</title>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
    <%-- google icons--%>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
</head>

<body>
<div class="container">
    <div class="card card-login mx-auto text-center" style="background-color: #FED">
        <div class="card-header mx-auto">
            <span> <i data-toggle="tooltip"
                      data-placement="top"
                      title="Welcome to EMS"
                      class="material-icons red-tooltip mainIcon loginLogo">
                group_add </i> </span><br/>
            <span class="logo_title mt-5" style="color:#000000"> Login Dashboard </span>

        </div>
        <div class="card-body">
            <form method="POST" action="${contextPath}/login" class="form-signin">
                <div class="form-group ${error != null ? 'has-error' : ''}">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="text" name="username" class="form-control" placeholder="Username">
                    </div>

                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="password" class="form-control" placeholder="Password">
                    </div>

                    <div class="form-group">
                        <input type="submit" name="btn" value="Login" class="btn btn-outline-danger float-right login_btn">
                        <a href="${contextPath}/registration" class="btn btn-outline-success float-left">Create an account</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
</body>
</html>