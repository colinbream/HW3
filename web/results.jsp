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
        int hours=Integer.parseInt(request.getParameter("hours"));
        double rate=Double.parseDouble(request.getParameter("rate"));
        double pretax=Double.parseDouble(request.getParameter("pretax"));
        double posttax=Double.parseDouble(request.getParameter("posttax"));
        int overtimeHours=0;
            if (hours>40)
                overtimeHours= (hours-40);
        double overtimeRate=0;
            if (hours>40)
                overtimeRate= (rate*1.5); 
        double grossPay=(rate*hours)+(overtimeRate*overtimeHours); 
        double pretaxpay= grossPay-pretax;
        double taxamount;
            if (grossPay<500)
                taxamount = (.18*grossPay);
            else 
                taxamount = (.22*grossPay);
        double posttaxpay= grossPay-taxamount;
        double netpay= posttaxpay-pretax-posttax;
        
        %> 
   
    <body>
        <h1>Salary Info</h1>
        <table>
            <tr><td>Total Hours Worked:</td><td><input type="text" name="hours" value="<%=hours%>" disabled="disabled"></td></tr>
            <tr><td>Hourly Rate:</td><td><input type="text" name="rate" value="<%=rate%>" disabled="disabled"></td></tr>
            <tr><td># Hours Overtime:</td><td><input type="text" name="overtimeHours" value="<%=overtimeHours%>"></td></tr>
            <tr><td>Overtime Hourly Rate:</td><td><input type="text" name="overtimeRate" value="<%=overtimeRate%>"></td></tr>
            <tr><td>Gross Pay:</td><td><input type="text" name="grossPay" value="<%=grossPay%>"></td></tr>
            <tr><td>Pre-tax Deduct:</td><td><input type="text" name="pretax" value="<%=pretax%>" disabled="disabled"></td></tr>
            <tr><td>Pre-tax Pay:</td><td><input type="text" name="pretaxpay" value="<%=pretaxpay%>"></td></tr>
            <tr><td>Tax Amount:</td><td><input type="text" name="taxamount" value="<%=taxamount%>"></td></tr>
            <tr><td>Post-tax Pay:</td><td><input type="text" name="posttaxpay" value="<%=posttaxpay%>"></td></tr>
            <tr><td>Post-tax Deduct:</td><td><input type="text" name="posttax" value="<%=posttax%>" disabled="disabled"></td></tr>
            <tr><td>Net Pay:</td><td><input type="text" name="netpay" value="<%=netpay%>"></td></tr>
            
            
            
            
            
            
            
        </table> 
    </body>
</html>
