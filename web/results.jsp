
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <%
        
        double HW1 = Double.parseDouble(request.getParameter("HW"));
        double HP1 = Double.parseDouble(request.getParameter("HP"));
        double POS1 = Double.parseDouble(request.getParameter("PTD"));
        double POTD1 = Double.parseDouble(request.getParameter("POTD"));
    %>
    <body>
        <h1>Salary Info</h1>
        <hr>
        
        It's great to see you <%= name %>!<br>
        I see you are <%= Uage%> years old. Next year you will be <%= ageNextYr%>.
    </body>
</html>
