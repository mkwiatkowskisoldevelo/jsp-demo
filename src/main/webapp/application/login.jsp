<%@include file="header.jsp" %>

<c:set var="username" value="<%= request.getParameter("username")%>"/>
<c:set var="password" value="<%= request.getParameter("password")%>"/>

<c:set var="existingPassword" value="${applicationScope.users[username]}"/>

<c:if test="${existingPassword != null}">
    <c:if test="${existingPassword == password}">
        <%
          session.setAttribute("currentUser", request.getParameter("username"));
        %>
        <c:set var="currentUser" value="${username}" scope="session"/>
        <jsp:forward page="main.jsp"/>
    </c:if>

    <c:if test="${existingPassword != password}">
        <%
            response.setStatus(400);
        %>
        <jsp:forward page="loginForm.jsp">
            <jsp:param name="errorMessage"
                value="Password invalid!"/>
        </jsp:forward>
    </c:if>
</c:if>

<c:if test="${existingPassword == null}">
    <%
        response.setStatus(400);
    %>
    <jsp:forward page="loginForm.jsp">
        <jsp:param name="errorMessage"
            value="Username invalid!"/>
    </jsp:forward>
</c:if>

<%@include file="footer.jsp" %>