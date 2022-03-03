package org.personal.studentManagementSystem.dao.impl;

import org.personal.studentManagementSystem.connectionFactory.ConnectionFactory;
import org.personal.studentManagementSystem.dao.StudentDao;
import org.personal.studentManagementSystem.model.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentDaoImpl implements StudentDao {
    private static Connection connection;

    private static PreparedStatement preparedStatement;

    private static ResultSet resultSet;

    @Override
    public int save(Student student) throws ClassNotFoundException, SQLException{
        final String QUERY = "INSERT INTO student (student_name,student_address,student_contact,student_email,bill_id) VALUE (?,?,?,?,1)";
        connection = ConnectionFactory.getConnection();
        preparedStatement = connection.prepareStatement(QUERY);
        preparedStatement.setString(1, student.getStudent_name());
        preparedStatement.setString(2, student.getStudent_address());
        preparedStatement.setString(3, student.getStudent_contact());
        preparedStatement.setString(4, student.getStudent_email());
//fee status lai get method xaina iSget somthign xa
        return preparedStatement.executeUpdate();
    }

    @Override
    public int update(Student student) throws ClassNotFoundException, SQLException{
        final String QUERY ="UPDATE student set student_name=?, student_address=?, student_contact=?, student_email=? WHERE student_id=?";
        connection = ConnectionFactory.getConnection();
        preparedStatement = connection.prepareStatement(QUERY);
        preparedStatement.setString(1, student.getStudent_name());
        preparedStatement.setString(2, student.getStudent_address());
        preparedStatement.setString(3, student.getStudent_contact());
        preparedStatement.setString(4, student.getStudent_email());
        preparedStatement.setInt(5, student.getStudent_id());
        return preparedStatement.executeUpdate();
    }

    @Override
    public int delete(int student_id) throws ClassNotFoundException, SQLException{
        Student student =findOne(student_id);
        final String QUERY ="DELETE FROM student WHERE student_id=?";
        connection=ConnectionFactory.getConnection();
        preparedStatement= connection.prepareStatement(QUERY);
        preparedStatement.setInt(1,student_id);
        return preparedStatement.executeUpdate();
    }

    @Override
    public List<Student> findAll() throws ClassNotFoundException, SQLException{
        final List<Student> students =new ArrayList<>();
        final String QUERY = "SELECT * FROM student";
        connection = ConnectionFactory.getConnection();
        preparedStatement= connection.prepareStatement(QUERY);
        resultSet = connection.prepareStatement(QUERY).executeQuery();

        while(resultSet.next()){
            Student student = new Student();
            student.setStudent_id(resultSet.getInt("student_id"));
            student.setStudent_name(resultSet.getString("student_name"));
            student.setStudent_address(resultSet.getString("student_address"));
            student.setStudent_contact(resultSet.getString("student_contact"));
            student.setStudent_email(resultSet.getString("student_email"));
            student.setFee_status(resultSet.getBoolean("fee_status"));
            students.add(student);
        }
        return students;
    }

    @Override
    public Student findOne(int student_id) throws ClassNotFoundException, SQLException{
        final String QUERY = "SELECT * FROM student WHERE student_id=?";
        connection= ConnectionFactory.getConnection();
        preparedStatement = connection.prepareStatement(QUERY);
        preparedStatement.setInt(1, student_id);
        resultSet= preparedStatement.executeQuery();

        Student student = new Student();
        while(resultSet.next()){
            student.setStudent_id(resultSet.getInt("student_id"));
            student.setStudent_name(resultSet.getString("student_name"));
            student.setStudent_address(resultSet.getString("student_address"));
            student.setStudent_contact(resultSet.getString("student_contact"));
            student.setStudent_email(resultSet.getString("student_email"));
            student.setFee_status(resultSet.getBoolean("fee_status"));
        }
        return student;
    }
}
