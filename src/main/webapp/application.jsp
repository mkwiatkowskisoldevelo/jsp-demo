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