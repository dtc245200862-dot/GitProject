<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Từ điển Anh - Việt</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f6f8; display: flex; justify-content: center; margin-top: 100px; }
        .container { background: white; width: 380px; padding: 35px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,.12); text-align: center; }
        input { width: 90%; padding: 12px; margin: 15px 0; border: 1px solid #ccc; border-radius: 4px; font-size: 16px; box-sizing: border-box; }
        button { width: 90%; padding: 12px; border: 0; border-radius: 4px; background: #1b2a7a; color: white; font-size: 16px; font-weight: bold; cursor: pointer; }
        button:hover { background: #121c54; }
    </style>
</head>
<body>
<div class="container">
    <h2>Từ Điển Anh - Việt</h2>
    <form action="dictionary.jsp" method="POST">
        <input type="text" name="search" placeholder="Nhập từ tiếng Anh..." required autofocus>
        <button type="submit">Tìm kiếm</button>
    </form>
</div>
</body>
</html>
