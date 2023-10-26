<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="object" class="beanss.loginBean"/>

<jsp:setProperty name="object" property="user" param="user"/>
<jsp:setProperty name="object" property="password" param="password"/>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<form action="login.jsp" method="post">
    <label for="User">Your username:</label>
    <input type="text" id="User" name="user" required>
    <p></p>
    <p></p>
    <label for="Password">Password:</label>
    <input type="text" id="Password" name="password">
    <input type="submit" value="Send">
</form>

<%
    String user = object.getUser();
    String password = object.getPassword();

    if (user != null && password != null) {
        if (user.equals("admin") && password.equals("admin")) {
            session.setAttribute("loggedIn", "true");
            response.sendRedirect("http://localhost:8080/forum-1.8/forum.jsp");
        } else {
            out.println("Wrong password");
        }
    }
%>

</body>
</html>
