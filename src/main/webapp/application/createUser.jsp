<%@include file="header.jsp" %>

<form action="createUser" method="post">
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
    <div class="form-group">
        <label for="emailAddress">Email Address</label>
        <input class="form-control" type="text" name="emailAddress"/>
    </div>
    <input class="btn btn-primary" type="submit" value="Create User"/>
    
    <c:out value="${param.errorMessage}"/>
</form>

<%@include file="footer.jsp" %>