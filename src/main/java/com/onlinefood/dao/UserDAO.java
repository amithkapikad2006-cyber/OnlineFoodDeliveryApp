package com.onlinefood.dao;

import com.onlinefood.model.User;

public interface UserDAO {

    boolean registerUser(User user);

    User loginUser(String email, String password);

}