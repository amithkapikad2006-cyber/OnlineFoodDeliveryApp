package com.onlinefood.servlet;

import java.io.IOException;

import com.onlinefood.dao.impl.UserDAOImpl;
import com.onlinefood.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAOImpl dao = new UserDAOImpl();

        User user = dao.loginUser(email, password);

        if (user != null) {

        	// Destroy any existing session
        	HttpSession oldSession = request.getSession(false);

        	if (oldSession != null) {
        	    oldSession.invalidate();
        	}

        	// Create a brand new session
        	HttpSession session = request.getSession(true);

        	session.setAttribute("user", user);
            response.sendRedirect("home");

        } else {

            response.getWriter().println("Invalid Email or Password");

        }
    }
}