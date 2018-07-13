<%@ page
    language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@include file="header.jsp" %>
<jsp:useBean class="com.sda.jsp.Calculation" id="calc" scope="application"/>
<jsp:setProperty property="multiplier" name="calc" value="12"/>
<html>
  <title>
    <% out.print("Hello!!!!!"); %>
  </title>
  <body>
    <h2>Hello World!</h2>

    <%-- int value = 10 / 0; --%>

    <a href="request.jsp">request</a><br>
    <a href="response.jsp">response</a><br>
    <a href="forward.jsp">forward</a><br>
    <a href="session.jsp">session</a><br>
    <a href="print.jsp">print</a><br>
    <a href="forEach.jsp">forEach</a><br>
    <a href="declaration.jsp">declaration</a><br>
    <a href="expressionLanguage.jsp">expressionLanguage</a><br>
    <a href="javaBean.jsp">javaBean</a><br>
    <a href="coreTags.jsp">coreTags</a><br>

    <jsp:include page="application.jsp"/>
  </body>
</html>
