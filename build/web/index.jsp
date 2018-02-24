<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./CSS/stylesheet.css">
        <title>Tax Calculation</title>
    </head>

    <body>
        
        <div class="info" style="text-aligh:center">
            <h1>Simple Salary Calculator</h1>
            <hr>
            <form name="demoForm" action="results.jsp" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td>Hours Worked:</td>
                            <td><input type="text" name="HW" value="" size="50"></td>
                        </tr>
                        
                        <tr>
                            <td>Hourly Pay:</td>
                            <td><input type="text" name="HP" value="" size="50"></td>
                        </tr>

                        <tr>
                            <td>Pre-tax Deduct:</td>
                            <td><input type="text" name="PTD" value="" size="50"></td>
                        </tr>

                        <tr>
                            <td>Post-tax Deduct:</td>
                            <td><input type="text" name="POTD" value="" size="50"></td>
                        </tr>                        
                    </tbody>
                </table>
                    
                <br> <input type="submit" value="Submit" id="submit">
                     <input type="reset" value="Clear" id="clear">
            </form>
        </div> 
    </body>
</html>
