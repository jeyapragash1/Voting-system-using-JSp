package com.votingsystem.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * User Model Class for Voting System
 * Represents a registered voter in the system
 * 
 * @author Voting System Team
 * @version 1.0
 * @since 2026-01-03
 */
public class User implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private int userId;
    private String nic;
    private String username;
    private String email;
    private String password;
    private String firstName;
    private String lastName;
    private String phone;
    private LocalDate dateOfBirth;
    private String gender;
    private String address;
    private String voterStatus; // Registered, Eligible, Inactive, Disqualified
    private boolean hasVoted;
    private LocalDateTime votedAt;
    private LocalDateTime registrationDate;
    private LocalDateTime lastLogin;
    private boolean isActive;
    
    // Constructors
    public User() {}
    
    public User(String nic, String username, String email, String password,
                String firstName, String lastName) {
        this.nic = nic;
        this.username = username;
        this.email = email;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
    }
    
    // Getters and Setters
    
    public int getUserId() {
        return userId;
    }
    
    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    public String getNic() {
        return nic;
    }
    
    public void setNic(String nic) {
        this.nic = nic;
    }
    
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getFirstName() {
        return firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String getLastName() {
        return lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getPhone() {
        return phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }
    
    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
    
    public String getGender() {
        return gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    
    public String getAddress() {
        return address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getVoterStatus() {
        return voterStatus;
    }
    
    public void setVoterStatus(String voterStatus) {
        this.voterStatus = voterStatus;
    }
    
    public boolean isHasVoted() {
        return hasVoted;
    }
    
    public void setHasVoted(boolean hasVoted) {
        this.hasVoted = hasVoted;
    }
    
    public LocalDateTime getVotedAt() {
        return votedAt;
    }
    
    public void setVotedAt(LocalDateTime votedAt) {
        this.votedAt = votedAt;
    }
    
    public LocalDateTime getRegistrationDate() {
        return registrationDate;
    }
    
    public void setRegistrationDate(LocalDateTime registrationDate) {
        this.registrationDate = registrationDate;
    }
    
    public LocalDateTime getLastLogin() {
        return lastLogin;
    }
    
    public void setLastLogin(LocalDateTime lastLogin) {
        this.lastLogin = lastLogin;
    }
    
    public boolean isActive() {
        return isActive;
    }
    
    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }
    
    // Methods
    
    /**
     * Check if user can vote
     */
    public boolean canVote() {
        return this.voterStatus.equals("Eligible") && !this.hasVoted && this.isActive;
    }
    
    /**
     * Get full name
     */
    public String getFullName() {
        return this.firstName + " " + this.lastName;
    }
    
    /**
     * Convert to string
     */
    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", voterStatus='" + voterStatus + '\'' +
                ", hasVoted=" + hasVoted +
                ", isActive=" + isActive +
                '}';
    }
}
