package com.fikirtepe.app.Service;

import com.fikirtepe.app.Model.User;
import org.springframework.stereotype.Service;

import java.util.List;

public interface FikirtepeService {
    void createUser(User user);
    List<User> getUsers();
}
