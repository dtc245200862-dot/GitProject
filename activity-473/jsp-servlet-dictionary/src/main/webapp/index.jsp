<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Từ điển Anh - Việt</title>
    <style>
        body { font-family: Arial, sans-serif; display: flex; justify-content: center; margin-top: 100px; background: #f8fafc; }
        .dictionary-container { background: white; padding: 40px; border-radius: 8px; box-shadow: 0 4px 10px rgba(0,0,0,.1); text-align: center; width: 350px; }
        input, button { width: 90%; box-sizing: border-box; padding: 12px; font-size: 16px; border-radius: 4px; }
        input { margin: 15px 0; border: 1px solid #ccc; }
        button { background: #1b2a7a; color: white; border: none; cursor: pointer; font-weight: bold; }
    </style>
</head>
<body>
    <div class="dictionary-container">
        <h2>Từ Điển Anh - Việt</h2>
        <form action="translate" method="POST">
            <input type="text" name="word" placeholder="Nhập từ tiếng Anh..." required autofocus>
            <button type="submit">Tìm kiếm</button>
        </form>
    </div>
</body>
</html>