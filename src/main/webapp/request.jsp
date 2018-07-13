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