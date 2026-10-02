<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Discount Calculator</title>
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="display-discount" method="post">
    <label>Product Description:</label><br>
    <input type="text" name="productDescription" required><br><br>

    <label>List Price:</label><br>
    <input type="number" name="listPrice" step="0.01" min="0" required><br><br>

    <label>Discount Percent:</label><br>
    <input type="number" name="discountPercent" step="0.01" min="0" max="100" required><br><br>

    <button type="submit">Calculate Discount</button>
</form>
</body>
</html>
