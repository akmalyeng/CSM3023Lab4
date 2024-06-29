<%-- 
    Document   : insuranceQuotation
    Created on : 30 Apr 2024, 1:14:38?am
    Author     : Amirf
--%>

<html>
<head>
    <title>Insurance Quotation</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script>
        function validateForm() {
            let icno = document.getElementById("icno").value;
            let name = document.getElementById("name").value;
            let price = document.getElementById("price").value;

            if(icno === "" || name === "" || price === "") {
                alert("Please fill in all fields");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<h1>Insurance Quotation</h1>

<form action="processInsuranceQuo.jsp" onsubmit="return validateForm()">
    <fieldset>
        <legend>Insurance Calculation</legend>
        <label for="icno">ICNo :</label>
        <input type="number" id="icno" name="icno"><br><br>
        <label for="name">Name :</label>
        <input type="text" id="name" name="name"><br><br>
        <label for="price">Market Price :</label>
        <input type="number" id="price" name="price"><br><br>
        <label for="cover">Coverage Type:</label>
        <select name="cover" id="cover">
            <option value="1" selected="selected">Comprehensive</option>
            <option value="2">Third-party</option>
        </select><br><br>
        <label for="disc">No claims discount(NCD):</label>
        <select name="disc" id="disc">
            <option value="1" selected="selected">10%</option>
            <option value="2">25%</option>
            <option value="3">35%</option>
            <option value="4">55%</option>
        </select><br><br>
        <button type="submit">Submit</button>
        <button type="reset">Cancel</button>
    </fieldset>
</form>
</body>
</html>
