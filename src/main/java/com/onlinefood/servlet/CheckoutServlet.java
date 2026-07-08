package com.onlinefood.servlet;

import java.io.IOException;
import java.util.List;

import com.onlinefood.dao.impl.OrderDAOImpl;
import com.onlinefood.model.Cart;
import com.onlinefood.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        List<Cart> cartList = (List<Cart>) session.getAttribute("cart");

        OrderDAOImpl dao = new OrderDAOImpl();

        boolean status = dao.placeOrder(user, cartList);

        if (status) {

            session.removeAttribute("cart");

            response.sendRedirect("success.jsp");

        } else {

            response.getWriter().println("Order Failed!");

        }
    }
}
