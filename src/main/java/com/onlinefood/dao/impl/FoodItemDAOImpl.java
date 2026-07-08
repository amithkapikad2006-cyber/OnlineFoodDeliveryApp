package com.onlinefood.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.onlinefood.dao.FoodItemDAO;
import com.onlinefood.dbutil.DBConnection;
import com.onlinefood.model.FoodItem;

public class FoodItemDAOImpl implements FoodItemDAO {

    @Override
    public List<FoodItem> getFoodByRestaurant(int restaurantId) {

        List<FoodItem> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM food_items WHERE restaurant_id=?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, restaurantId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                FoodItem food = new FoodItem();

                food.setFoodId(rs.getInt("food_id"));
                food.setFoodName(rs.getString("food_name"));
                food.setPrice(rs.getDouble("price"));
                food.setDescription(rs.getString("description"));
                food.setImage(rs.getString("image"));
                food.setRestaurantId(rs.getInt("restaurant_id"));
                food.setCategoryId(rs.getInt("category_id"));

                list.add(food);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public FoodItem getFoodById(int foodId) {

        FoodItem food = null;

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM food_items WHERE food_id=?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, foodId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                food = new FoodItem();

                food.setFoodId(rs.getInt("food_id"));
                food.setFoodName(rs.getString("food_name"));
                food.setPrice(rs.getDouble("price"));
                food.setDescription(rs.getString("description"));
                food.setImage(rs.getString("image"));
                food.setRestaurantId(rs.getInt("restaurant_id"));
                food.setCategoryId(rs.getInt("category_id"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return food;
    }

}