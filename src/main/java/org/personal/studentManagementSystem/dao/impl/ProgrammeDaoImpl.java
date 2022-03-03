package org.personal.studentManagementSystem.dao.impl;

import org.personal.studentManagementSystem.connectionFactory.ConnectionFactory;
import org.personal.studentManagementSystem.dao.ProgrammeDao;
import org.personal.studentManagementSystem.model.Programme;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProgrammeDaoImpl implements ProgrammeDao {

    private static Connection connection;

    private static PreparedStatement preparedStatement;

    private static ResultSet resultSet;


    public List<Programme> findAll() throws ClassNotFoundException, SQLException {
        final List<Programme> programmes =new ArrayList<>();
        final String QUERY = "SELECT * FROM programme";
        connection = ConnectionFactory.getConnection();
        preparedStatement= connection.prepareStatement(QUERY);
        resultSet = connection.prepareStatement(QUERY).executeQuery();

        while(resultSet.next()){
            Programme programme = new Programme();
            programme.setProgramme_id(resultSet.getInt("programme_id"));
            programme.setProgramme_name(resultSet.getString("programme_name"));
            programmes.add(programme);
        }
        return programmes;
    }

}
