<%@ page import="java.util.*" %>
<p>
<%
    long creationTime = session.getCreationTime();
    Date createdAt = new Date(creationTime);
    out.print(" created at: " + createdAt.toString());

    long lastAccessedTime = session.getLastAccessedTime();
    Date lastAccessedAt = new Date(lastAccessedTime);
    out.print(" last accessed at: " + lastAccessedAt.toString());
%>
</p>