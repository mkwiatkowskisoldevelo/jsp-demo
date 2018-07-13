<%! String name = "jakas nazwa"; %>

<% out.print(name); %>

<%!
    public String toUpperCase(String param) {
        return param.trim().toUpperCase();
    } 
%>

<%= toUpperCase("      name            ")%> <br>