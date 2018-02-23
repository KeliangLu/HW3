
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
        <form name="demoForm" action="results.jsp" method="post">
            <label>Total Hours Worked:</label><%=HW1%>
            <br><hr>
            <label>Hourly Rate:</label><%=HP1%>
            <br><hr>
            <label># Hours Overtime:</label><%=overtime%>
            <br><hr>
            <label>Overtime Hourly Rate:</label><%=overrate%>
            <br><hr>
            <label>Gross Pay:</label><%=grossPay%>
            <br><hr>
            <label>Pre-tax Deduct:</label><%=POS1%>
            <br><hr>
            <label>Pre-tax pay:</label><%=taxablePay%>
            <br><hr>
            <label>Tax Amount:</label><%=taxAmount%>
            <br><hr>
            <label>Post-tax pay:</label><%=postTaxPay%>
            <br><hr>
            <label>Post-tax Deduct:</label><%=POTD1%>
            <br><hr>
            <label>Net Pay:</label><%=netPay%>
            <br><hr>
        </form>
        
        
        </div>
    </body>
</html>
