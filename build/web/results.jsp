
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
        double overtime=0;
        double overrate=0;
        double overpay=0;
        double normalpay=0;
        double grossPay=0;
        double taxablePay=0;
        double taxAmount=0;
        if(HW1 > 40){
            overtime = HW1 - 40;
            overrate = HP1 * 1.5;
            overpay = overtime * overrate;
            normalpay = 40 * HP1;
            grossPay = overpay + normalpay;    
        }
        else{
            grossPay = HW1 * HP1;
        }
        taxablePay = grossPay - POS1;
        if(grossPay < 500){
            taxAmount = taxablePay * 0.18;
        }
        else{
            taxAmount = taxablePay * 0.22;
        }
        
        double postTaxPay = taxablePay - taxAmount;
        double netPay = postTaxPay - POTD1;
        
    %>
    <body>
        <div class="result">
            <h1>Salary Information</h1>
        <hr>
            <div class="table2">
                <table border="1">
                    <tbody>
                        <tr>
                            <td>Total Hours Worked:</td>
                            <td><%=HW1%></td>
                        </tr>

                        <tr>
                            <td>Hourly Rate:</td>
                            <td><%=HP1%></td>
                        </tr>

                        <tr>
                            <td># Hours Overtime:</td>
                            <td><%=overtime%></td>
                        </tr>

                        <tr>
                            <td>Overtime Hourly Rate:</td>
                            <td><%=overrate%></td>
                        </tr>

                        <tr>
                            <td>Gross Pay:</td>
                            <td><%=grossPay%></td>
                        </tr>

                        <tr>
                            <td>Pre-tax Deduct:</td>
                            <td><%=POS1%></td>
                        </tr>

                        <tr>
                            <td>Pre-tax pay:</td>
                            <td><%=taxablePay%></td>
                        </tr>

                        <tr>
                            <td>Tax Amount:</td>
                            <td><%=taxAmount%></td>
                        </tr>

                        <tr>
                            <td>Post-tax pay:</td>
                            <td><%=postTaxPay%></td>
                        </tr>

                        <tr>
                            <td>Post-tax Deduct:</td>
                            <td><%=POTD1%></td>
                        </tr>

                        <tr>
                            <td>Net Pay:</td>
                            <td><%=netPay%></td>
                        </tr>              
                    </tbody>
                </table>
            </div>  
        </div>
    </body>
</html>
