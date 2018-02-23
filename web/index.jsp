<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./CSS/stylesheet.css">
        <title>Tax Calculation</title>
    </head>
    <body background="Calculation1.jpg">
        <div style="text-align: center">   
            <div class="info">
            <h1>Simple Salary Calculator</h1>
            <hr>
            <form name="demoForm" action="results.jsp" method="post">
                <label>Hours Worked:</label><input class="tbox" type="text" name="HW" value="" size="50">
                <br>
                <label>Hourly Pay:</label><input class="tbox" type="text" name="HP" value="" size="50">
                <br>
                <label>Pre-tax Deduct:</label><input class="tbox" type="text" name="PTD" value="" size="50">
                <br>
                <label>Post-tax Deduct:</label><input class="tbox" type="text" name="POTD" value="">
                    
                <br> <input type="submit" value="Submit" id="submit">
                     <input type="reset" value="Clear" id="clear">
            </form>
            </div>
        </div>
    </body>
</html>
