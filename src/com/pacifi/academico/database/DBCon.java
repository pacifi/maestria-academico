package com.pacifi.academico.database;

import java.sql.*;


public class DBCon {
    private Connection conn;
    private Statement stmt;

    public DBCon() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception ex) {
            System.out.println("Exception is: " + ex.toString());
        }

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/academico?user=root&password=12345");

            stmt = conn.createStatement();

            //ps = conn.prepareStatement();
        } catch (SQLException ex) {
            System.out.println("SQLException: " + ex.getMessage());
        }
    }

    public Connection getConnection() {
        return conn;
    }

    public Statement getStatement() {
        return stmt;
    }

    public void closeConnection() {
        try {
            if (stmt != null) {
                stmt.close();
            }

            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            System.out.println("SQLException: " + ex.getMessage());
        }
    }
}