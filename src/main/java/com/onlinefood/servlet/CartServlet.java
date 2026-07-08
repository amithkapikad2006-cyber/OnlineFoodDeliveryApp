package com.onlinefood.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.onlinefood.dao.impl.FoodItemDAOImpl;
import com.onlinefood.model.Cart;
import com.onlinefood.model.FoodItem;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    int foodId = Integer.parseInt(request.getParameter("foodId"));
	    int quantity = Integer.parseInt(request.getParameter("quantity"));

	    FoodItemDAOImpl dao = new FoodItemDAOImpl();
	    FoodItem food = dao.getFoodById(foodId);

	    HttpSession session = request.getSession();

	    List<Cart> cartList = (List<Cart>) session.getAttribute("cart");

	    if (cartList == null) {
	        cartList = new ArrayList<>();
	    }

	    boolean found = false;

	    for (Cart cart : cartList) {

	        if (cart.getFoodItem().getFoodId() == foodId) {

	            // Replace the quantity instead of adding
	            cart.setQuantity(quantity);

	            found = true;
	            break;
	        }
	    }

	    if (!found) {

	        cartList.add(new Cart(food, quantity));

	    }

	    session.setAttribute("cart", cartList);

	    response.sendRedirect("cart.jsp");
	}
}