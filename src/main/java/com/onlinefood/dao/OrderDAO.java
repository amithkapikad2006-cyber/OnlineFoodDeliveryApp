package com.onlinefood.dao;

import java.util.List;
import com.onlinefood.model.Order;

public interface OrderDAO {

    List<Order> getOrdersByUserId(int userId);

}