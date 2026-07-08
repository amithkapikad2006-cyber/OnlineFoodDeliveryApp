package com.onlinefood.servlet;

import java.io.IOException;
import java.util.List;

import com.onlinefood.dao.impl.FoodItemDAOImpl;
import com.onlinefood.model.FoodItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/menu")
public class MenuServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int restaurantId =
                Integer.parseInt(request.getParameter("restaurantId"));

        FoodItemDAOImpl dao = new FoodItemDAOImpl();

        List<FoodItem> foodList =
                dao.getFoodByRestaurant(restaurantId);

        request.setAttribute("foodList", foodList);

        request.getRequestDispatcher("menu.jsp")
               .forward(request, response);
    }
}