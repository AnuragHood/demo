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
    <script href="${contextPath}/resources/js/common.js"></script>
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
        <div class="right item">
            <a href="${contextPath}/logout" class="item">
                <i class="rocket icon"></i> Logout
            </a>
        </div>
    </div>
</div>
<div class="ui container segment">
    <div class="ui two item stackable tabs menu">
        <a class="active item" id="addSoftware">Softwares/tools &nbsp;&nbsp;<i class="large
          plus circle icon"></i></a>
        <a class="active item" id="addTools">Uses/commands&nbsp;&nbsp;<i class="large
          plus circle icon"></i></a>
    </div>
  <div class="ui attached message" id="addEntity">
    <div class="ui grid">
        <div class="eight wide column">
            <div class="ui attached message">
                <div class="ui card">
                    <div class="content">
                        <div class="header">Add an entity</div>
                    </div>
                    <div class="content">
                        <form class="ui form segment">

                            <div class="two fields">
                                <div class="field">
                                    <label>Tool/Software Name</label>
                                    <input placeholder="Tool/Software Name" name="name" type="text" class="messageId">
                                    <div class="ui negative message">
                                        <i class="close icon"></i>
                                        <p>Type minimum 10 characters!!
                                        </p></div>
                                </div>

                                <div class="field">
                                    <label>Description</label>
                                    <input placeholder="Tool/Software Description" name="name" type="text" class="messageId">
                                    <div class="ui negative message">
                                        <i class="close icon"></i>
                                        <p>Type minimum 10 characters!!
                                        </p></div>
                                </div>
                            </div>

                            <div class="two fields">
                                <div class="field">
                                    <label>Version</label>
                                    <input placeholder="Version" name="version" type="text">
                                </div>
                                <div class="field">
                                    <label>Uses</label>
                                    <input type="text" name="Uses" placeholder="Uses">
                                </div>
                            </div>

                            <div class="ui error message"></div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <div class="eight wide column">
            <div class="ui attached message">
                <div class="ui card">
                    <div class="content">
                        <div class="header">Add an Operation</div>
                    </div>
                    <div class="content">
                        <div class="ui attached message">
                            <center><i class="large
          plus circle icon"></i></center>

                            <div class="ui icon message">

                                <div class="content">
                                    <%--<div class="header">
                                        Start the tool? &nbsp;&nbsp;<i
                                            class="arrow alternate circle right large icon"></i>&nbsp;&nbsp;<i class="trash alternate
 large icon"></i>
                                    </div>--%>
                                      <div class="field">
                                        <label>What to do?</label>
                                        <input placeholder="ex start the tool(instructions)" name="name" type="text" class="messageId">
                                          <div class="ui negative message">
                                              <i class="close icon"></i>
                                              <p>Type minimum 10 characters!!
                                              </p></div>
                                      </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
  <div class="extra content">
    <button class="ui primary submit button" id ="sendButton">Add</button>
    <button class="ui right floated reset button">Clear</button>
  </div>
</div>
</div>
<script
        src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
<script src="${contextPath}/resources/js/home.js"></script>

</body>
</html>