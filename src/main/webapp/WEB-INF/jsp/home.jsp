<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>home page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
 <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>
<div class="ui attached stackable menu">
  <div class="ui container">
    <a class="item">
      <i class="home icon"></i> Home
    </a>
    <a class="item">
      <i class="grid layout icon"></i> Browse
    </a>
    <a class="item">
      <i class="mail icon"></i> Messages
    </a>
    <div class="ui simple dropdown item">
      More
      <i class="dropdown icon"></i>
      <div class="menu">
        <a class="item"><i class="edit icon"></i> Edit Profile</a>
        <a class="item"><i class="globe icon"></i> Choose Language</a>
        <a class="item"><i class="settings icon"></i> Account Settings</a>
      </div>
    </div>
    <div class="right item">
      <div class="ui input"><input type="text" placeholder="Search..."></div>
    </div>
  </div>
</div>
<div class="ui container segment">
  <div class="ui fluid two item menu">
  <a class="active item">Softwares/tools &nbsp;&nbsp;<i class="large 
          plus circle icon"></i></a>
  <a class="active item">Uses/commands&nbsp;&nbsp;<i class="large 
          plus circle icon"></i></a>
 
</div>
</div>
<script
  src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
  integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="
  crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
   <script href="${contextPath}/resources/js/common.js" rel="stylesheet"></script>
</body>
</html>