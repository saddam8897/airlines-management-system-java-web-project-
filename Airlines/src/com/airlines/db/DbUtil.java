package com.airlines.db;
import java.sql.*;
public class DbUtil {
    private static Connection connection = null;
    public static Connection getConnection() {
        if (connection != null)
            return connection;
        else {
            try {           
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/airlines","root","root");
            } catch (Exception e) {
                System.out.println(e);
            }
            return connection;
        }
    }
}