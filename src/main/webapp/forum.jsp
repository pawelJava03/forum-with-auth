<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<jsp:useBean id="userObiekt" class="beanss.userBean"/>
<jsp:useBean id="postObiekt" class="beanss.postBean"/>


<jsp:setProperty name="userObiekt" property="username" param="newUsername"/>

<jsp:setProperty name="postObiekt" property="content" param="newPost"/>

<jsp:setProperty name="postObiekt" property="title" param="newTitle"/>



<!DOCTYPE html>
<html>
<head>
    <title>Forum</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<br/>

<h3>Pawel's Forum</h3>
<%
    String loggedIn = (String) session.getAttribute("loggedIn");
    if (loggedIn == null || !loggedIn.equals("true")) {
        response.sendRedirect("login.jsp");
    } else {
%>

<form action="forum.jsp" method="post">
    <label for="newUsername">Your username:</label>
    <input type="text" id="newUsername" name="newUsername" required>
    <p></p>
    <p></p>
    <label for="newTitle">Title:</label>
    <input type="text" id="newTitle" name="newTitle">
    <p></p>
    <p></p>
    <label for="newPost">Type content:</label>
    <input type="text" id="newPost" name="newPost">


    <input type="submit" value="Send">
</form>
<div>
    <p>Release date: ${postObiekt.dateTime}</p>
    <p>Username: ${userObiekt.username}</p>
</div>
<div>
    <p></p>
    <p>Published by user: <strong> ${userObiekt.username} </strong></p>
    <p></p>
    <p>Post title: <strong>${postObiekt.title}</strong></p>
    <p></p>
    <p></p>
    <p>${postObiekt.content}</p>
</div>

</body>
</html>
<%
    }
%>