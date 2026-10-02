<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>CodeGym JSP Demo</title>
</head>
<body style="font-family: Arial, sans-serif; text-align: center; margin-top: 100px; background-color: #f8fafc;">
    <h2>Chào mừng tới lớp học Java Web!</h2>
    <p>Đây là trang JSP hiển thị thời gian hiện tại của máy chủ.</p>
    <p>Thời gian hệ thống hiện tại: <strong><%= new java.util.Date() %></strong></p>
    <br>
    <a href="hello">Đi tới HelloServlet</a>
</body>
</html>