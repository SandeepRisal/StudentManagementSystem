package org.personal.studentManagementSystem.dao;

import org.personal.studentManagementSystem.model.Login;

public interface LoginDao {
    Login findOne(Login login);
}
