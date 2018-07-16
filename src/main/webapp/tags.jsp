<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>
<%@ page import="java.util.*" %>

<c:set var="date" value="<%= new Date()%>"/> 

<c:out value="${date}"/><br>

Time: 
<fmt:formatDate type = "time" value="${date}"/><br>

Date: 
<fmt:formatDate type = "date" value="${date}"/><br>

Both:
<fmt:formatDate type = "both" value="${date}"/><br>

Both with short time format:
<fmt:formatDate type="both" timeStyle="short" value="${date}"/><br>

Both with medium time format:
<fmt:formatDate type="both" timeStyle="medium" value="${date}"/><br>

Both with long time format:
<fmt:formatDate type="both" timeStyle="long" value="${date}"/><br>

Custom date format: 
<fmt:formatDate pattern="yyyy-MM-dd-hh:mm" value="${date}"/>

<c:import var="file" url="http://localhost:8080/demo/books.xml"/>

<x:parse var="parsed" xml="${file}"/> <br>

Book 1:  <br>
<x:out select="$parsed/books/book[1]/name"/><br>
<x:out select="$parsed/books/book[1]/author"/><br>
<x:out select="$parsed/books/book[1]/price"/><br>

Book 2:  <br>
<x:out select="$parsed/books/book[2]/name"/><br>
<x:out select="$parsed/books/book[2]/author"/><br>
<x:out select="$parsed/books/book[2]/price"/><br>

<x:forEach select="$parsed/books/book/name" var="name">
    Name: <x:out select="$name"/><br>
</x:forEach>

<x:choose>
    <x:when select="$parsed/books/book[2]/name = 'Encyklopedia'">
        To jest encyklopedia <br>
    </x:when>
    <x:when select="$parsed/books/book[2]/name = 'Pan Tadeusz'">
        To jest Pan Tadeusz <br>
    </x:when>
    <x:otherwise>
        Otherwise <br>
    </x:otherwise>
</x:choose>

<c:set var="string" value="cos tam"/>

${fn:toUpperCase(string)}