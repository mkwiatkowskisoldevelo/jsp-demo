<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>

<c:set var="username" value="<%= request.getParameter("username")%>"/>
<c:set var="password" value="<%= request.getParameter("password")%>"/>

<c:set var="existingPassword" value="${applicationScope.users[username]}"/>
<c:if test="${existingPassword != null}">
    <c:if test="${existingPassword == password}">
        <c:set var="currentUser" value="${username}" scope="session"/>
        <jsp:forward page="main.jsp"/>
    </c:if>
</c:if>
