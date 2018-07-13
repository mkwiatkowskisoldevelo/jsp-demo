<%@ page import="java.util.*" %>
<%
    ArrayList list = new ArrayList();
    list.add("1");
    list.add("2");
    list.add("3");
    list.add("4");

    for (Object item : list) {
%>
    <h4>Element: <% out.print(item); %></h4>
    <p><% out.print(item); %></p>
<% } %>