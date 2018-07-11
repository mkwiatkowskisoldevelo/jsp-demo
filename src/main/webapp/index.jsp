<%@ page 
    language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<html>
  <title>
    <% out.print("Hello!!!!!"); %>
  </title>
  <body>
    <h2>Hello World!</h2>

    <p><% out.print("Hello!!!!!"); %></p>
    <p><%= "Hello!!!!!" %></p>
    <p>Accept-Language: <%= request.getHeader("Accept-Language") %></p>
    <p>parameter: subject <% out.print(request.getParameter("subject")); %></p>
    <p>parameter: code <% out.print(request.getParameter("code")); %></p>
    <p>method <%= request.getMethod() %></p>
    <p>URL <%= request.getRequestURI() %></p>
    <p>protocol <%= request.getProtocol() %></p>
    <p>remote host <%= request.getRemoteHost() %></p>
    <p>remote address <%= request.getRemoteAddr() %></p>

    <p>
    <%
      response.setIntHeader("Refresh", 3);
      Date currentDate = new Date();
      out.print(currentDate.toString());
    %>
    </p>

    <p>
    <%
      boolean isNew = session.isNew();
      if (isNew) {
    %>
        <h1>NEW SESSION!!</h1>
    <%
      }

      long creationTime = session.getCreationTime();
      Date createdAt = new Date(creationTime);
      out.print(" created at: " + createdAt.toString());

      long lastAccessedTime = session.getLastAccessedTime();
      Date lastAccessedAt = new Date(lastAccessedTime);
      out.print(" last accessed at: " + lastAccessedAt.toString());
    %>
    </p>

    <p>
    <%
      out.print("PRINT");
      out.newLine();
      out.println("PRINT_LINE");
    %>
    </p>

    <p>
    <%
      Integer numberOfVisits = 
          (Integer) application.getAttribute("numberOfVisits");
      if (numberOfVisits == null) {
        numberOfVisits = 1;
      } else {
        numberOfVisits++;
      }
      application.setAttribute("numberOfVisits", numberOfVisits);
      out.print("Number of visits: " + numberOfVisits);
    %>
    </p>

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
  </body>
</html>
