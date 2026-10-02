# Activity 472 - Currency Converter

Bài tập Java JSP/Servlet chuyển đổi USD sang VNĐ.

## Chức năng

- Nhập tỉ giá VND/USD.
- Nhập số lượng USD.
- Gửi dữ liệu bằng POST tới `/convert`.
- `ConverterServlet` tính VNĐ theo công thức `VND = USD * Rate`.
- Dùng Jakarta Servlet API 6.0, tương thích Tomcat 10.1+.

## Chạy bằng Maven

```bash
mvn clean package
```

File WAR được tạo tại `target/jsp-servlet-currency-converter.war`.
