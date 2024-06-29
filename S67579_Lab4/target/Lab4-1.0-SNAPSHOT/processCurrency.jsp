<%-- 
    Document   : processCurrency
    Created on : 27 Apr 2024, 12:09:52 pm
    Author     : Amirf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%!
        // Define constants...
        final double USD = 3.92;
        final double STG = 5.96;
        final double EURO = 4.47;
        
        // Define method to perform currency exchange...
        private double calculateRate(String currency, int amount) {
            double currencyChange = 0.00;

            if (currency.equals("1"))
                currencyChange = (double) (amount / USD);
            else if (currency.equals("2"))
                currencyChange = (double) (amount / STG);
            else if (currency.equals("3"))
                currencyChange = (double) (amount / EURO);

            return currencyChange;
        }
    %>
    
    <%
        // Retrieve the value for Amount and Convert to
        int amount = Integer.parseInt(request.getParameter("amount"));
        String convertTo = request.getParameter("convert");
        
        // Call the calculateRate method to perform currency conversion
        double result = calculateRate(convertTo, amount);
    %>
    
    <h1>Use JSP Scriplet and JSP Expression in application</h1>
    <p style="color: purple;">Amount in Ringgit Malaysia: RM<%= amount %></p>
    <% if (convertTo.equals("1")) { %>
        <p style="color: purple;">Amount in US Dollar: <%= String.format("%.2f", result) %></p>
    <% } else if (convertTo.equals("2")) { %>
        <p style="color: purple;">Amount in British Pound: <%= String.format("%.2f", result) %></p>
    <% } else if (convertTo.equals("3")) { %>
        <p style="color: purple;">Amount in Euro: <%= String.format("%.2f", result) %></p>
    <% } %>
    
    <footer>
        &copy;2024 Amir Fakhrie
    </footer>
</body>
</html>
