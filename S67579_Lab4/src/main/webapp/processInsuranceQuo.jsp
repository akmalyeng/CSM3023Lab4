<%-- 
    Document   : processInsuranceQuo
    Created on : 30 Apr 2024, 1:16:04 am
    Author     : Amirf
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String icNo = request.getParameter("icno");
    String customerName = request.getParameter("name");
    
    double marketPrice = 0.0;
    if (request.getParameter("price") != null && !request.getParameter("price").isEmpty()) {
        marketPrice = Double.parseDouble(request.getParameter("price"));
    }
    
    String coverageType = "Unknown";
    if (request.getParameter("cover") != null && !request.getParameter("cover").isEmpty()) {
        coverageType = (request.getParameter("cover").equals("1")) ? "Comprehensive" : "Third-party";
    }
    
    int ncd = 0;
    if (request.getParameter("disc") != null && !request.getParameter("disc").isEmpty()) {
        ncd = Integer.parseInt(request.getParameter("disc"));
    }
    
    double discount = 0.0;
    switch (ncd) {
        case 1:
            discount = 0.1;
            break;
        case 2:
            discount = 0.25;
            break;
        case 3:
            discount = 0.35;
            break;
        case 4:
            discount = 0.55;
            break;
    }
    
    double totalAmount = marketPrice * (1 - discount);
    double gst = totalAmount * 0.06;
    double finalAmount = totalAmount + gst;
%>
<html>
<body style="color: purple;">
    <h1 style="color: black;">Details of Insurance Quotation</h1>
    <p>IC No: <%= icNo %></p>
    <p>Customer Name: <%= customerName %></p>
    <p>Market Price: <%= String.format("%.2f", marketPrice) %></p>
    <p>Coverage Type: <%= coverageType %></p>
    <p>No Claim Discount (NCD): <%= String.format("%.2f", (discount * 100)) %>%</p>
    <p>Insurance Amount: <%= String.format("%.2f", totalAmount) %></p>
    <p>6% GST: <%= String.format("%.2f", gst) %></p>
    <p><strong>Final Amount (with 6% GST): <%= String.format("%.2f", finalAmount) %></strong></p>
</body>
</html>
