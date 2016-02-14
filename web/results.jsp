<%-- 
    Document   : results
    Created on : Feb 13, 2016, 10:23:51 AM
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
         <link rel="stylesheet" type="text/css" href="styleSheet.css"/>
    </head>
    
    <%
        int hoursworked=Integer.parseInt(request.getParameter("hoursworked"));
        double rate=Double.parseDouble(request.getParameter("rate"));
        double pretax=Double.parseDouble(request.getParameter("pretax"));
        double posttax=Double.parseDouble(request.getParameter("posttax"));
        int overtimeHours=0;
        int regularHours=0;
        double overtimeRate=0;
        double regularPay=0;
        double overtimePay=0;
        double grossPay=0;
        if (hoursworked>40)
        {
             regularHours=40;
             overtimeHours= (hoursworked-40);
             overtimeRate= (rate*1.5);
             overtimePay= (overtimeHours*overtimeRate);
             regularPay= (regularHours*rate);
             grossPay= (regularPay+overtimePay);
        }
        else 
        {   regularHours=hoursworked;
            overtimeHours=0;
            grossPay= (regularHours*rate);
        }
        double pretaxpay= grossPay-pretax;
        double taxamount;
            if (grossPay<500)
                taxamount = (.18*pretaxpay);
            else 
                taxamount = (.22*pretaxpay);
        double posttaxpay= pretaxpay-taxamount;
        double netpay= posttaxpay-posttax;
        
        %> 
   
    <body>
        <h1>Salary Info</h1>
        <table>
            <tr><td>Total Hours Worked:</td><td><input type="text" name="hoursworked" value="<%=hoursworked%>" disabled="disabled"></td></tr>
            <tr><td>Hourly Rate:</td><td><input type="text" name="rate" value="<%=rate%>" disabled="disabled"></td></tr>
            <tr><td># Hours Overtime:</td><td><input type="text" name="overtimeHours" value="<%=overtimeHours%>"disabled="disabled" ></td></tr>
            <tr><td>Overtime Hourly Rate:</td><td><input type="text" name="overtimeRate" value="<%=overtimeRate%>" disabled="disabled"></td></tr>
            <tr><td>Gross Pay:</td><td><input type="text" name="grossPay" value="<%=grossPay%>" disabled="disabled"></td></tr>
            <tr><td>Pre-tax Deduct:</td><td><input type="text" name="pretax" value="<%=pretax%>" disabled="disabled"></td></tr>
            <tr><td>Pre-tax Pay:</td><td><input type="text" name="pretaxpay" value="<%=pretaxpay%>" disabled="disabled"></td></tr>
            <tr><td>Tax Amount:</td><td><input type="text" name="taxamount" value="<%=taxamount%>"disabled="disabled" ></td></tr>
            <tr><td>Post-tax Pay:</td><td><input type="text" name="posttaxpay" value="<%=posttaxpay%>"disabled="disabled" ></td></tr>
            <tr><td>Post-tax Deduct:</td><td><input type="text" name="posttax" value="<%=posttax%>" disabled="disabled"></td></tr>
            <tr><td>Net Pay:</td><td><input type="text" name="netpay" value="<%=netpay%>" disabled="disabled"></td></tr>
            
            
            
            
            
            
            
        </table> 
            <a href="http://msci3300-s1601.cloudapp.net:8080/salaryCalculator/">Back to Calculator</a>
    </body>
</html>
