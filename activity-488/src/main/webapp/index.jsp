<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>

<%!
    public static class Customer {
        private final String name;
        private final String birthday;
        private final String address;
        private final String image;

        public Customer(String name, String birthday, String address, String image) {
            this.name = name;
            this.birthday = birthday;
            this.address = address;
            this.image = image;
        }

        public String getName() { return name; }
        public String getBirthday() { return birthday; }
        public String getAddress() { return address; }
        public String getImage() { return image; }
    }
%>

<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Nguyễn Văn An", "15/03/2000", "Hà Nội", "https://i.pravatar.cc/150?img=12"));
    customers.add(new Customer("Trần Thị Bình", "22/07/2001", "Thái Nguyên", "https://i.pravatar.cc/150?img=47"));
    customers.add(new Customer("Lê Minh Châu", "10/11/1999", "Hải Phòng", "https://i.pravatar.cc/150?img=33"));
    customers.add(new Customer("Phạm Quốc Dũng", "05/01/2002", "Đà Nẵng", "https://i.pravatar.cc/150?img=68"));
    request.setAttribute("customers", customers);
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng - JSTL</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f4f6f8; margin: 0; padding: 40px; }
        h1 { text-align: center; color: #333; margin-bottom: 30px; }
        .customer-list { max-width: 1000px; margin: auto; display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 20px; }
        .customer { background: white; border-radius: 10px; padding: 20px; display: flex; gap: 20px; box-shadow: 0 2px 8px rgba(0,0,0,.08); }
        .customer img { width: 110px; height: 110px; border-radius: 8px; object-fit: cover; }
        .customer h2 { margin: 5px 0 12px; color: #222; font-size: 20px; }
        .customer p { margin: 7px 0; color: #555; }
    </style>
</head>
<body>
<h1>Danh sách khách hàng</h1>

<div class="customer-list">
    <c:forEach var="customer" items="${customers}">
        <div class="customer">
            <img src="${customer.image}" alt="Ảnh ${customer.name}">
            <div>
                <h2>${customer.name}</h2>
                <p><strong>Ngày sinh:</strong> ${customer.birthday}</p>
                <p><strong>Địa chỉ:</strong> ${customer.address}</p>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
