package org.example.demo1.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.demo1.modells.Book;
import org.example.demo1.repo.repo;

import java.io.IOException;

@WebServlet(name = "BuyServlet", value = "/BuyServlet")
public class BuyServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException  {
        response.setContentType("text/html");
        String isbn = request.getParameter("isbn");
        Book b = repo.getInstance().bookSearchByIsbn(isbn);
        b.setSold(true);
        b.setBuyer(request.getSession().getAttribute("SessionNev").toString());
        request.getRequestDispatcher("fooldal.jsp").forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

    }

    public void destroy() {
    }
}