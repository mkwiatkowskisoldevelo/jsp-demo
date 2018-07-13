<jsp:forward page="<%=
    session.isNew() ? 
    "newSession.jsp" : "oldSession.jsp" %>">
    <jsp:param name="forwardParam" value="thisIsParamValue"/>
</jsp:forward>