package org.personal.studentManagementSystem.dao;

import org.personal.studentManagementSystem.model.Course;
import org.personal.studentManagementSystem.model.Programme;

import java.sql.SQLException;
import java.util.List;

public interface CourseDao {
    List<Course> findAll() throws ClassNotFoundException, SQLException;
}
