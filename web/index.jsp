<%-- 
    Document   : index
    Created on : Feb 11, 2016, 8:05:32 AM
    Author     : Colin Bream
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="styleSheet.css"/>
    </head>
    
    <body>
        <h1>Simple Salary Calculator</h1> 
        <form name="form" method="post" action="results.jsp">
            <table>
                <tr><td>Hours Worked:</td><td><input type="text" name="hoursworked"></td></tr>
                <tr><td>Hourly Pay:</td><td><input type="text" name="rate"></td></tr>
                <tr><td>Pre-Tax Deduct:</td><td><input type="text" name="pretax"></td></tr>
                <tr><td>Post-Tax Deduct:</td><td><input type="text" name="posttax"></td></tr>
                <tr><td><input type="reset" value="Clear"></td>
                <td><input type="submit" value="Submit"></td></tr>
                
                
            
            
            
            </table>
        </form>
    </body>
</html>
