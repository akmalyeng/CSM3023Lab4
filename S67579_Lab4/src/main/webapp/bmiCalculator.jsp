<%-- 
    Document   : bmiCalculator
    Created on : 30 Apr 2024, 2:36:08 am
    Author     : Amirf
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>BMI Calculator</title>
</head>
<body>
    <h1>BMI Calculator</h1>
    <form method="post" action="calculateBMI.jsp">
        Enter your weight in kilograms: <input type="text" name="weight"><br>
        Enter your height in meters: <input type="text" name="height"><br>
        <input type="submit" value="Calculate BMI">
    </form>
</body>
</html>