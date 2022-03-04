package org.personal.studentManagementSystem.dao.impl;

import org.personal.studentManagementSystem.connectionFactory.ConnectionFactory;
import org.personal.studentManagementSystem.dao.CourseDao;
import org.personal.studentManagementSystem.model.Course;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDaoImpl implements CourseDao {
    private static Connection connection;

    private static PreparedStatement preparedStatement;

    private static ResultSet resultSet;


    public List<Course> findAll() throws ClassNotFoundException, SQLException {
        final List<Course> courses =new ArrayList<>();
        final String QUERY = "SELECT * FROM course";
        connection = ConnectionFactory.getConnection();
        preparedStatement= connection.prepareStatement(QUERY);
        resultSet = connection.prepareStatement(QUERY).executeQuery();

        while(resultSet.next()){
            Course course = new Course();
            course.setCourse_id(resultSet.getInt("course_id"));
            course.setCourse_code(resultSet.getString("course_code"));
            course.setCourse_name(resultSet.getString("course_name"));
            courses.add(course);
        }
        return courses;
    }
}
