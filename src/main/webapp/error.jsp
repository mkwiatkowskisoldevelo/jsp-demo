<%@ page import="java.io.PrintWriter"%>
<%@ page isErrorPage="true"%>
 
An error is reported:<br/>
<i><%= exception %></i><br/>
This problem occurred in the following place:<br/>
<pre>
<% exception.printStackTrace( new PrintWriter( out ) ); %>
</pre>