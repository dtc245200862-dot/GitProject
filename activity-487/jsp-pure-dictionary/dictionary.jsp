<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Kết quả tra cứu</title></head>
<body>
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
    <p>Nghĩa là: <b><%= result %></b></p>
<% } else { %>
    <p>Không tìm thấy từ <b><%= searchWord %></b> trong từ điển.</p>
<% } %>
<a href="index.jsp">Quay lại trang chủ</a>
</body>
</html>
