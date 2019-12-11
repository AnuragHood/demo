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
                                    <input placeholder="Tool/Software Name" name="name" type="text" class="messageId" id = "toolSoftware">
                                    <div class="ui negative message">
                                        <i class="close icon"></i>
                                        <p>Type minimum 10 characters!!
                                        </p></div>
                                </div>

                                <div class="field">
                                    <label>Description</label>
                                    <input placeholder="Tool/Software Description" name="name" type="text" class="messageId" id ="description">
                                    <div class="ui negative message">
                                        <i class="close icon"></i>
                                        <p>Type minimum 10 characters!!
                                        </p></div>
                                </div>
                            </div>

                            <div class="two fields">
                                <div class="field">
                                    <label>Version</label>
                                    <input placeholder="Version" name="version" type="text" id ="version">
                                </div>
                                <div class="field">
                                    <label>Uses</label>
                                    <input type="text" name="Uses" placeholder="Uses" id="uses">
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
          plus circle icon addTodo"></i></center>

                            <div class="ui icon message">

                                <div class="todo content">
                                
                                      <div class="field">
                                        <label>What to do?</label>
                                        <input placeholder="ex start the tool(instructions)" name="todoName" type="text" class="messageId" id ="">
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

<c:forEach items="${itemList}" var="value">
 <div class="ui attached message" id="showEntity">
    <div class="ui grid">
        <div class="eight wide column">
            <div class="ui attached message">
                <div class="ui card">
                    <div class="content">
                        <div class="header">Details:</div>
                    </div>
                    <div class="content">
                       <table class="ui celled stackable table">
  <thead>
    <tr><th>Name</th>
    <th>Description</th>
    <th>Version</th>
     <th>Uses</th>
  </tr></thead>
  <tbody>
    <tr>
      <td >value.softwareName</td>
      <td >value.description</td>
      <td >value.version</td>
       <td >value.uses</td>
    </tr>
  </tbody>
</table>
                    </div>

                </div>
            </div>
        </div>

        <div class="eight wide column">
            <div class="ui attached message">
                <div class="ui card">
                    <div class="content">
                        <div class="header">Perform an available Operation:</div>
                    </div>
                    <div class="content">
                        <div class="ui attached message">
                            <center><i class="large
          plus circle icon addTodo"></i></center>

                            <div class="ui icon message">

                                <div class="content">
                                <c:if test="${!empty value.commands}">
<c:forEach items="${itemList}" var="value2">
                                   <div class="header">
                                        value2 &nbsp;&nbsp;<i
                                            class="arrow alternate circle right large icon"></i>&nbsp;&nbsp;<i class="trash alternate
 large icon"></i>
                                    </div>
                                    </c:forEach>
                                    </c:if>
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
</c:forEach>

</div>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
<script src="${contextPath}/resources/js/home.js"></script>

</body>
</html>