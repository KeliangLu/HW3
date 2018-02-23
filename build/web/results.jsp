
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./CSS/stylesheet.css">
        <title>Result</title>
    </head>
    <%
        
        double HW1 = Double.parseDouble(request.getParameter("HW"));
        double HP1 = Double.parseDouble(request.getParameter("HP"));
        double POS1 = Double.parseDouble(request.getParameter("PTD"));
        double POTD1 = Double.parseDouble(request.getParameter("POTD"));
    %>
    <body>
        <div class="result">
            <h1>Salary Info</h1>
        <hr>
        <form name="demoForm" action="results.jsp" method="post">
            <label>Total Hours Worked:</label><input class="tbox" type="text" name="HW" value="<%=HW1%>" size="50">
            <br>
            <label>Hourly Rate:</label><input class="tbox" type="text" name="HP" value="" size="50">
            <br>
            <label># Hours Overtime:</label><input class="tbox" type="text" name="HW" value="<%=HW1%>" size="50">
            <br>
            <label>Overtime Hourly Rate:</label><input class="tbox" type="text" name="HP" value="" size="50">
            <br>
            <label>Gross Pay:</label><input class="tbox" type="text" name="HW" value="<%=HW1%>" size="50">
            <br>
            <label>Pre-tax Deduct:</label><input class="tbox" type="text" name="HP" value="" size="50">
            <br>
            <label>Pre-tax pay:</label><input class="tbox" type="text" name="HP" value="" size="50">
            <br>
            <label>Tax Amount:</label><input class="tbox" type="text" name="PTD" value="" size="50">
            <br>
            <label>Post-tax pay:</label><input class="tbox" type="text" name="HP" value="" size="50">
            <br>
            <label>Net Pay:</label><input class="tbox" type="text" name="HP" value="" size="50">
            <br>
            
            <br> <input type="submit" value="Submit" id="submit">
                 <input type="reset" value="Clear" id="clear">
        </form>>
        
        
        
        </div>
    </body>
</html>
