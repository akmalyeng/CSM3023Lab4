<%-- 
    Document   : calculateBMI
    Created on : 30 Apr 2024, 2:36:25 am
    Author     : Amirf
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.io.PrintWriter" %>

<%
double weight = Double.parseDouble(request.getParameter("weight"));
double height = Double.parseDouble(request.getParameter("height"));
double bmi = weight / (height * height);

DecimalFormat df = new DecimalFormat("#.##");
String bmiFormatted = df.format(bmi);

String bmiCategory;
if (bmi < 18.5) {
    bmiCategory = "underweight";
} else if (bmi >= 18.5 && bmi <= 25) {
    bmiCategory = "optimal weight";
} else {
    bmiCategory = "overweight";
}
%>

<html>
<head>
    <title>BMI Result</title>
</head>
<body>
    <h1>Your BMI Result</h1>
    <p>Your BMI is: <%= bmiFormatted %></p>
    <p>You are <%= bmiCategory %>.</p>
</body>
</html>