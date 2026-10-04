<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kết quả tra cứu</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f6f8; display: flex; justify-content: center; margin-top: 100px; }
        .container { background: white; width: 420px; padding: 35px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,.12); text-align: center; }
        .success { background: #e8f5e9; padding: 15px; border-radius: 8px; margin-top: 20px; }
        .error { background: #ffebee; padding: 15px; border-radius: 8px; margin-top: 20px; }
        .back { display: inline-block; margin-top: 20px; padding: 10px 20px; background: #1b2a7a; color: white; text-decoration: none; border-radius: 4px; }
    </style>
</head>
<body>
<div class="container">
    <h2>KẾT QUẢ TRA CỨU</h2>
    <%
        request.setCharacterEncoding("UTF-8");
        String searchWord = request.getParameter("search");

        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển sách");
        dictionary.put("computer", "Máy tính");
        dictionary.put("student", "Sinh viên");

        String result = null;
        if (searchWord != null && !searchWord.trim().isEmpty()) {
            result = dictionary.get(searchWord.trim().toLowerCase());
        }
    %>

    <% if (result != null) { %>
        <p>Từ cần tra: <b><%= searchWord %></b></p>
        <div class="success">
            <h3>Nghĩa là: <%= result %></h3>
        </div>
    <% } else { %>
        <div class="error">
            <h3>Không tìm thấy!</h3>
            <p>Từ khóa <b><%= searchWord %></b> không có trong từ điển.</p>
        </div>
    <% } %>

    <a href="index.jsp" class="back">Quay lại trang chủ</a>
</div>
</body>
</html>
