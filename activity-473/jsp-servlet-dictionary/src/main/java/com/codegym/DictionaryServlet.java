package com.codegym;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "DictionaryServlet", urlPatterns = {"/translate"})
public class DictionaryServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "Xin chào");
        dictionary.put("how", "Thế nào");
        dictionary.put("book", "Quyển sách");
        dictionary.put("computer", "Máy tính");
        dictionary.put("student", "Sinh viên");

        String searchWord = request.getParameter("word");

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html lang='vi'><head><meta charset='UTF-8'><title>Kết quả tra cứu</title></head>");
            out.println("<body style='font-family:Arial,sans-serif;text-align:center;margin-top:100px;'>");
            if (searchWord != null && !searchWord.trim().isEmpty()) {
                String keyword = searchWord.trim().toLowerCase();
                String result = dictionary.get(keyword);
                if (result != null) {
                    out.println("<h2>Từ khóa: " + searchWord + "</h2>");
                    out.println("<h3>Nghĩa tiếng Việt: " + result + "</h3>");
                } else {
                    out.println("<h2>Không tìm thấy từ: " + searchWord + "</h2>");
                }
            } else {
                out.println("<h2>Vui lòng nhập từ khóa hợp lệ!</h2>");
            }
            out.println("<br><a href='index.jsp'>Quay lại</a>");
            out.println("</body></html>");
        }
    }
}