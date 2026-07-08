package com.onlinefood.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.onlinefood.dao.UserDAO;
import com.onlinefood.dbutil.DBConnection;
import com.onlinefood.model.User;

public class UserDAOImpl implements UserDAO {

	@Override
	public boolean registerUser(User user) {

	    boolean status = false;

	    try {

	        Connection con = DBConnection.getConnection();

	        String sql = "INSERT INTO users(name,email,password,phone,address,role) VALUES(?,?,?,?,?,?)";

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, user.getName());
	        ps.setString(2, user.getEmail());
	        ps.setString(3, user.getPassword());
	        ps.setString(4, user.getPhone());
	        ps.setString(5, user.getAddress());
	        ps.setString(6, user.getRole());

	        int rows = ps.executeUpdate();

	        if (rows > 0) {
	            status = true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return status;
	}

	@Override
	public User loginUser(String email, String password) {

	    User user = null;

	    try {

	        Connection con = DBConnection.getConnection();

	        String sql = "SELECT * FROM users WHERE email=? AND password=?";

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, email);
	        ps.setString(2, password);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	            user = new User();

	            user.setUserId(rs.getInt("user_id"));
	            user.setName(rs.getString("name"));
	            user.setEmail(rs.getString("email"));
	            user.setPassword(rs.getString("password"));
	            user.setPhone(rs.getString("phone"));
	            user.setAddress(rs.getString("address"));
	            user.setRole(rs.getString("role"));
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return user;
	}
}