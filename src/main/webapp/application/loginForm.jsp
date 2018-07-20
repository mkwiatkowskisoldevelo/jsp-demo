<%@include file="header.jsp" %>

<%
    if (application.getAttribute("users") == null) {
        Map<String, String> users = new HashMap<String, String>();
        application.setAttribute("users", users);
    }
%>

<form action="login" method="post">
    <div class="form-group">
        <label for="username">Username</label>
        <input class="form-control" type="text" name="username"/>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input class="form-control" type="password" name="password"/>
    </div>
    <input class="btn btn-primary" type="submit" value="Log In"/>
    
    <c:out value="${param.errorMessage}"/>
</form>
<a class="btn btn-danger" href="createUser.jsp">Sign Up</a>

<%@include file="footer.jsp" %>