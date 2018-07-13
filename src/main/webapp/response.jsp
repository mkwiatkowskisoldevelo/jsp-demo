<%@ page import="java.util.*" %>
<p>
<%
    response.setIntHeader("Refresh", 3);
    Date currentDate = new Date();
    out.print(currentDate.toString());
%>
</p>