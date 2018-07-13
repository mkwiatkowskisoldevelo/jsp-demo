<%@ page isELIgnored="false" %>
<%@ page import="java.util.*" %>
${param.asd}        
<br>

${pageContext.request.method}
<br>

${pageContext.request.uri}
<br>

${1 + 2 + 3}
<br>

${2 >= 1}
<br>

${applicationScope.numberOfVisits}
<br>

<%
    application.setAttribute("Marek", "1");
    application.setAttribute("Mirek", "2");
    application.setAttribute("Darek", "3");
    application.setAttribute("Jarek", "4");
    session.setAttribute("user", "Darek");
    
    ArrayList productList = new ArrayList();
    productList.add("kawa");
    productList.add("maslo");
    productList.add("bulka");
    session.setAttribute("products", productList);

    Map<String, String> map = new HashMap<String, String>();
    map.put("param1", "value1");
    map.put("param2", "value2");
    map.put("param3", "value3");
    application.setAttribute("params", map);
%>

${applicationScope[sessionScope.user]}
<br>

${sessionScope.products[param.currentProduct]}
<br>

${applicationScope.params.param1}
<br>