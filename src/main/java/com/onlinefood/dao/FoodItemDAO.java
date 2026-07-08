package com.onlinefood.dao;
import java.util.List;
import com.onlinefood.model.FoodItem;

public interface FoodItemDAO {

    List<FoodItem> getFoodByRestaurant(int restaurantId);
    FoodItem getFoodById(int foodId);

}