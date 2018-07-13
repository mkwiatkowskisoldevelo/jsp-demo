<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>
<jsp:useBean id="obj" class="com.sda.jsp.ExceptionThrower"/>

<c:set var="name" value="1" scope="application"/>
<c:set var="name" value="2" scope="session"/>
<c:set var="name" value="3" scope="request"/>
<c:set var="name" value="4"/>

<c:out value="${name}"/>

<c:if test="${name > 3}">
  <p>TRUE</p>
</c:if>

<c:catch var="catched">
  <%
    // int result = 9 / 0;
    obj.throwException();
  %>
</c:catch>

<c:if test="${catched != null}">
  ${catched} <br>
  ${catched.message} <br>
</c:if>

<c:set var="code" value="2"/>

<c:choose>
  <c:when test="${code > 3}">
    Is greater then 3
  </c:when>
  <c:when test="${code > 2}">
    Is greater then 2
  </c:when>
  <c:otherwise>
    Otherwise
  </c:otherwise>
</c:choose>
<br>

<c:set var="page" value="1"/>
<c:set var="size" value="10"/>

<c:forEach var="i" begin="${page * size}" end="${page * size + size - 1}">
   ${i}
</c:forEach>
<br>
