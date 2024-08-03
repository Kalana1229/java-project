package com.customer.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.customer.model.loginModel;

public class loginDoe {

    public boolean validate(loginModel loginmodel) {
        boolean status = false;

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/manage-customer",
                                                             "root",
                                                             "123456");
             PreparedStatement preparedStatement = conn.prepareStatement("select * from login where username = ? and password = ? and type = ?")) {

            preparedStatement.setString(1, loginmodel.getusername());
            preparedStatement.setString(2, loginmodel.getPassword());
            preparedStatement.setString(3, loginmodel.getType());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // Process SQL exception
            printSQLException(e);
        }
        return status;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
