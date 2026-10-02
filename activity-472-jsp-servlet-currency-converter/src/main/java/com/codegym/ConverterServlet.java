package com.codegym;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ConverterServlet", urlPatterns = {"/convert"})
public class ConverterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            try {
                double rate = Double.parseDouble(request.getParameter("rate"));
                double usd = Double.parseDouble(request.getParameter("usd"));
                double vnd = rate * usd;

                out.println("<!DOCTYPE html>");
                out.println("<html lang='vi'>");
                out.println("<head><meta charset='UTF-8'><title>Kết quả chuyển đổi</title></head>");
                out.println("<body style='font-family:Arial,sans-serif;text-align:center;margin-top:100px;'>");
                out.println("<h2>KẾT QUẢ CHUYỂN ĐỔI</h2>");
                out.println("<p>Tỉ giá: " + rate + " VND/USD</p>");
                out.println("<p>Số tiền USD: $" + usd + "</p>");
                out.println("<h3>Thành tiền VNĐ: " + vnd + " VNĐ</h3>");
                out.println("<a href='index.jsp'>Quay lại</a>");
                out.println("</body></html>");
            } catch (NumberFormatException e) {
                out.println("<!DOCTYPE html><html lang='vi'><head><meta charset='UTF-8'><title>Lỗi</title></head>");
                out.println("<body style='font-family:Arial;text-align:center;margin-top:100px;'>");
                out.println("<h2 style='color:red;'>Lỗi: Vui lòng nhập số hợp lệ!</h2>");
                out.println("<a href='index.jsp'>Quay lại</a></body></html>");
            }
        }
    }
}
