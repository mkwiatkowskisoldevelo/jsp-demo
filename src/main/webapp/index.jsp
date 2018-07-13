<%@ page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@include file="header.jsp" %>
<html>
  <title>
    <% out.print("Hello!!!!!"); %>
  </title>
  <body>
    <h2>Hello World!</h2>

    <%-- int value = 10 / 0; --%>

    <jsp:include page="request.jsp"/>
    <jsp:include page="response.jsp"/>
    <!--<jsp:include page="forward.jsp"/>-->
    <jsp:include page="session.jsp"/>
    <jsp:include page="print.jsp"/>
    <jsp:include page="application.jsp"/>
    <jsp:include page="forEach.jsp"/>
    <jsp:include page="declaration.jsp"/>
    <jsp:include page="expressionLanguage.jsp"/>
  </body>
</html>
