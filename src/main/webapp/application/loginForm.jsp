<%@ page import="java.util.*" %>

<%
    Map<String, String> users = new HashMap<String, String>();
    users.put("admin", "password");
    users.put("user", "1234");
    application.setAttribute("users", users);
%>

<form action="login.jsp" method="post">
    <div class="form-group">
        <label for="username">Username</label>
        <input class="form-control" type="text" name="username"/>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input class="form-control" type="password" name="password"/>
    </div>
    <input class="btn btn-primary" type="submit" value="Log In"/>
</form>

<link rel="stylesheet" href="/demo/css/bootstrap.css">