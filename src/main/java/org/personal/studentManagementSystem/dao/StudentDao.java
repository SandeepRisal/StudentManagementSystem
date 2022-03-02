package org.personal.studentManagementSystem.dao;

import org.personal.studentManagementSystem.model.Student;

import java.sql.SQLException;
import java.util.List;

public interface StudentDao {
    int save(Student student) throws ClassNotFoundException, SQLException;

    int update(Student student) throws ClassNotFoundException, SQLException;

    int delete(int student_id) throws ClassNotFoundException, SQLException;

    List<Student> findAll() throws ClassNotFoundException, SQLException;

    Student findOne(int student_id) throws ClassNotFoundException, SQLException;
}
