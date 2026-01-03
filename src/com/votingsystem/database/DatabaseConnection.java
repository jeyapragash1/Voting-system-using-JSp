package com.votingsystem.database;

import java.sql.*;
import javax.sql.DataSource;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

/**
 * Database Connection Manager for Online Voting System
 * Handles MySQL database connections with connection pooling
 * 
 * @author Voting System Team
 * @version 1.0
 * @since 2026-01-03
 */
public class DatabaseConnection {
    
    // Database Configuration
    private static final String DB_HOST = "localhost";
    private static final String DB_PORT = "3306";
    private static final String DB_NAME = "online_voting_system";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "your_password"; // Change this!
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    
    // Connection URL
    private static final String DB_URL = "jdbc:mysql://" + DB_HOST + ":" + DB_PORT + "/" + 
                                         DB_NAME + "?useSSL=false&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    
    private static DataSource dataSource = null;
    
    /**
     * Initialize DataSource for connection pooling
     */
    static {
        try {
            Class.forName(JDBC_DRIVER);
            MysqlDataSource mysqlDataSource = new MysqlDataSource();
            mysqlDataSource.setURL(DB_URL);
            mysqlDataSource.setUser(DB_USER);
            mysqlDataSource.setPassword(DB_PASSWORD);
            dataSource = mysqlDataSource;
        } catch (ClassNotFoundException e) {
            System.err.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
        }
    }
    
    /**
     * Get database connection from DataSource
     * 
     * @return Connection object
     * @throws SQLException if connection fails
     */
    public static Connection getConnection() throws SQLException {
        if (dataSource == null) {
            throw new SQLException("DataSource not initialized!");
        }
        return dataSource.getConnection();
    }
    
    /**
     * Alternative: Get connection directly (without pooling)
     * Use this if connection pooling is not available
     * 
     * @return Direct Connection object
     * @throws SQLException if connection fails
     */
    public static Connection getDirectConnection() throws SQLException {
        try {
            Class.forName(JDBC_DRIVER);
            return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found: " + e.getMessage());
        }
    }
    
    /**
     * Close PreparedStatement
     */
    public static void closeStatement(Statement statement) {
        try {
            if (statement != null && !statement.isClosed()) {
                statement.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * Close ResultSet
     */
    public static void closeResultSet(ResultSet resultSet) {
        try {
            if (resultSet != null && !resultSet.isClosed()) {
                resultSet.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * Close Connection
     */
    public static void closeConnection(Connection connection) {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    /**
     * Close all database resources
     */
    public static void closeResources(Connection conn, Statement stmt, ResultSet rs) {
        closeResultSet(rs);
        closeStatement(stmt);
        closeConnection(conn);
    }
    
    /**
     * Test database connection
     * 
     * @return true if connection is successful
     */
    public static boolean testConnection() {
        Connection conn = null;
        try {
            conn = getConnection();
            if (conn != null && !conn.isClosed()) {
                System.out.println("✓ Database connection successful!");
                return true;
            }
        } catch (SQLException e) {
            System.err.println("✗ Database connection failed!");
            e.printStackTrace();
        } finally {
            closeConnection(conn);
        }
        return false;
    }
    
    /**
     * Get database connection info
     */
    public static void printConnectionInfo() {
        System.out.println("========== DATABASE CONFIGURATION ==========");
        System.out.println("Host: " + DB_HOST);
        System.out.println("Port: " + DB_PORT);
        System.out.println("Database: " + DB_NAME);
        System.out.println("User: " + DB_USER);
        System.out.println("URL: " + DB_URL);
        System.out.println("Driver: " + JDBC_DRIVER);
        System.out.println("==========================================");
    }
}
