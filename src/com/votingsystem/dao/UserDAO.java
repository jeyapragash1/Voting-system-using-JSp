package com.votingsystem.dao;

import com.votingsystem.database.DatabaseConnection;
import com.votingsystem.model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Data Access Object for User Management
 * Handles all database operations for users table
 * 
 * @author Voting System Team
 * @version 1.0
 * @since 2026-01-03
 */
public class UserDAO {
    
    /**
     * Register a new user
     * 
     * @param user User object with registration details
     * @return true if registration successful
     */
    public static boolean registerUser(User user) {
        String sql = "INSERT INTO users (nic, username, email, password, first_name, last_name, " +
                     "phone, date_of_birth, gender, address, voter_status, is_active) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, user.getNic());
            pstmt.setString(2, user.getUsername());
            pstmt.setString(3, user.getEmail());
            pstmt.setString(4, user.getPassword()); // Should be hashed
            pstmt.setString(5, user.getFirstName());
            pstmt.setString(6, user.getLastName());
            pstmt.setString(7, user.getPhone());
            pstmt.setDate(8, java.sql.Date.valueOf(user.getDateOfBirth()));
            pstmt.setString(9, user.getGender());
            pstmt.setString(10, user.getAddress());
            pstmt.setString(11, "Registered");
            pstmt.setBoolean(12, true);
            
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    /**
     * Login user verification
     * 
     * @param username Username or NIC
     * @param password Password
     * @return User object if credentials are valid, null otherwise
     */
    public static User loginUser(String username, String password) {
        String sql = "SELECT * FROM users WHERE (username = ? OR nic = ?) AND password = ? AND is_active = true";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setString(1, username);
            pstmt.setString(2, username);
            pstmt.setString(3, password); // Should compare with hashed password
            
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setFirstName(rs.getString("first_name"));
                user.setLastName(rs.getString("last_name"));
                user.setVoterStatus(rs.getString("voter_status"));
                user.setHasVoted(rs.getBoolean("has_voted"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    /**
     * Get user by ID
     * 
     * @param userId User ID
     * @return User object
     */
    public static User getUserById(int userId) {
        String sql = "SELECT * FROM users WHERE user_id = ?";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, userId);
            ResultSet rs = pstmt.executeQuery();
            
            if (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setNic(rs.getString("nic"));
                user.setUsername(rs.getString("username"));
                user.setEmail(rs.getString("email"));
                user.setFirstName(rs.getString("first_name"));
                user.setLastName(rs.getString("last_name"));
                user.setPhone(rs.getString("phone"));
                user.setVoterStatus(rs.getString("voter_status"));
                user.setHasVoted(rs.getBoolean("has_voted"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    /**
     * Update user vote status
     * 
     * @param userId User ID
     * @return true if update successful
     */
    public static boolean markUserVoted(int userId) {
        String sql = "UPDATE users SET has_voted = true, voted_at = CURRENT_TIMESTAMP WHERE user_id = ?";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, userId);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
    
    /**
     * Get all eligible voters
     * 
     * @return List of eligible users
     */
    public static List<User> getEligibleVoters() {
        String sql = "SELECT * FROM users WHERE voter_status = 'Eligible' AND is_active = true";
        List<User> users = new ArrayList<>();
        
        try (Connection conn = DatabaseConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setUsername(rs.getString("username"));
                user.setFirstName(rs.getString("first_name"));
                user.setLastName(rs.getString("last_name"));
                user.setVoterStatus(rs.getString("voter_status"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    
    /**
     * Delete user account
     * 
     * @param userId User ID
     * @return true if deletion successful
     */
    public static boolean deleteUser(int userId) {
        String sql = "UPDATE users SET is_active = false WHERE user_id = ?";
        
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            
            pstmt.setInt(1, userId);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
