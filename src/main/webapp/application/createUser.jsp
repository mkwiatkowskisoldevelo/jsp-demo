<%@include file="header.jsp" %>

<form action="user.jsp" method="post">
    <div class="form-group">
        <label for="username">Username</label>
        <input class="form-control" type="text" name="username"/>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input class="form-control" type="password" name="password"/>
    </div>
    <div class="form-group">
        <label for="password">Confirm Password</label>
        <input class="form-control" type="password" name="passwordConfirm"/>
    </div>
    <input class="btn btn-primary" type="submit" value="Create User"/>
    
    <c:out value="${param.errorMessage}"/>
</form>

<%@include file="footer.jsp" %>