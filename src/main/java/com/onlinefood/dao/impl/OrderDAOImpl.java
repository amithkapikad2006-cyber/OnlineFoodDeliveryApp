package com.onlinefood.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.onlinefood.dao.OrderDAO;
import com.onlinefood.dbutil.DBConnection;
import com.onlinefood.model.Order;

import java.sql.Statement;
import com.onlinefood.model.Cart;
import com.onlinefood.model.User;

public class OrderDAOImpl implements OrderDAO {

    @Override
    public List<Order> getOrdersByUserId(int userId) {

        List<Order> orders = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM orders WHERE user_id=? ORDER BY order_date DESC";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){

                Order order = new Order();

                order.setOrderId(rs.getInt("order_id"));
                order.setUserId(rs.getInt("user_id"));
                order.setTotalAmount(rs.getDouble("total_amount"));
                order.setOrderDate(rs.getTimestamp("order_date"));
                order.setStatus(rs.getString("status"));

                orders.add(order);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }public boolean placeOrder(User user, List<Cart> cartList) {

        try {

            Connection con = DBConnection.getConnection();

            double total = 0;

            for (Cart cart : cartList) {
                total += cart.getTotalPrice();
            }

            String orderSql = "INSERT INTO orders(user_id,total_amount,order_date,status) VALUES(?,?,NOW(),?)";

            PreparedStatement ps = con.prepareStatement(orderSql, Statement.RETURN_GENERATED_KEYS);

            ps.setInt(1, user.getUserId());
            ps.setDouble(2, total);
            ps.setString(3, "Placed");

            int rows = ps.executeUpdate();

            if (rows > 0) {

                ResultSet rs = ps.getGeneratedKeys();

                if (rs.next()) {

                    int orderId = rs.getInt(1);

                    String itemSql = "INSERT INTO order_items(order_id,food_id,quantity,subtotal) VALUES(?,?,?,?)";

                    PreparedStatement itemPs = con.prepareStatement(itemSql);

                    for (Cart cart : cartList) {

                        itemPs.setInt(1, orderId);
                        itemPs.setInt(2, cart.getFoodItem().getFoodId());
                        itemPs.setInt(3, cart.getQuantity());
                        itemPs.setDouble(4, cart.getTotalPrice());

                        itemPs.executeUpdate();
                    }

                    return true;
                }
            }

        } catch (Exception e) {

            e.printStackTrace();

        }

        return false;
    }
    public void clearOrders(int userId) {

        try {

            Connection con = DBConnection.getConnection();

            String sql1 = "DELETE FROM order_items WHERE order_id IN (SELECT order_id FROM orders WHERE user_id=?)";

            PreparedStatement ps1 = con.prepareStatement(sql1);

            ps1.setInt(1, userId);

            ps1.executeUpdate();

            String sql2 = "DELETE FROM orders WHERE user_id=?";

            PreparedStatement ps2 = con.prepareStatement(sql2);

            ps2.setInt(1, userId);

            ps2.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();

        }

    }

}