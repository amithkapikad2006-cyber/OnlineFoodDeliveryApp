package com.onlinefood.servlet;

import java.io.IOException;
import com.onlinefood.dao.impl.OrderDAOImpl;
import com.onlinefood.model.User;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request,
	        HttpServletResponse response) throws IOException {

	    HttpSession session = request.getSession(false);

	    if(session != null){

	        User user = (User) session.getAttribute("user");

	        if(user != null){

	            OrderDAOImpl dao = new OrderDAOImpl();

	            dao.clearOrders(user.getUserId());

	        }

	        session.invalidate();

	    }

	    response.sendRedirect("login.jsp");

	}
}