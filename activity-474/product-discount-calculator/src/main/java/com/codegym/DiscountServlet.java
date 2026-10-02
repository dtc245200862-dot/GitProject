package com.codegym;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String productDescription = request.getParameter("productDescription");
        double listPrice = Double.parseDouble(request.getParameter("listPrice"));
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));

        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice - discountAmount;

        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html lang='en'><head><meta charset='UTF-8'><title>Discount Result</title></head><body>");
            out.println("<h2>Product Discount Calculator</h2>");
            out.println("<p><strong>Product Description:</strong> " + productDescription + "</p>");
            out.println("<p><strong>List Price:</strong> " + String.format("%.2f", listPrice) + "</p>");
            out.println("<p><strong>Discount Percent:</strong> " + String.format("%.2f", discountPercent) + "%</p>");
            out.println("<p><strong>Discount Amount:</strong> " + String.format("%.2f", discountAmount) + "</p>");
            out.println("<p><strong>Discount Price:</strong> " + String.format("%.2f", discountPrice) + "</p>");
            out.println("<br><a href='index.jsp'>Back to calculator</a>");
            out.println("</body></html>");
        }
    }
}
