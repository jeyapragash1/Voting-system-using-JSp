-- ===================================================
-- ONLINE VOTING SYSTEM - DATABASE SCHEMA
-- Created: January 3, 2026
-- Database: MySQL 5.7+
-- ===================================================

-- Create Database
CREATE DATABASE IF NOT EXISTS online_voting_system;
USE online_voting_system;

-- ===================================================
-- TABLE 1: USERS (Voter Registration)
-- ===================================================
CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    nic VARCHAR(20) UNIQUE NOT NULL COMMENT 'National ID/Voter ID',
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL COMMENT 'Should be hashed',
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    address TEXT,
    voter_status ENUM('Registered', 'Eligible', 'Inactive', 'Disqualified') DEFAULT 'Registered',
    has_voted BOOLEAN DEFAULT FALSE COMMENT 'Track if user has already voted',
    voted_at TIMESTAMP NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL,
    is_active BOOLEAN DEFAULT TRUE,
    INDEX idx_nic (nic),
    INDEX idx_username (username),
    INDEX idx_voter_status (voter_status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 2: ADMINS (Admin Users)
-- ===================================================
CREATE TABLE IF NOT EXISTS admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    admin_username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL COMMENT 'Should be hashed',
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    admin_level ENUM('Super Admin', 'Election Admin', 'Moderator') DEFAULT 'Election Admin',
    phone VARCHAR(15),
    department VARCHAR(100),
    permissions TEXT COMMENT 'JSON or comma-separated permissions',
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_login TIMESTAMP NULL,
    is_active BOOLEAN DEFAULT TRUE,
    INDEX idx_admin_username (admin_username),
    INDEX idx_admin_level (admin_level)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 3: ELECTIONS (Voting Events)
-- ===================================================
CREATE TABLE IF NOT EXISTS elections (
    election_id INT AUTO_INCREMENT PRIMARY KEY,
    election_name VARCHAR(150) NOT NULL,
    election_description TEXT,
    election_type ENUM('General', 'Primary', 'Local', 'Referendum') DEFAULT 'General',
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    status ENUM('Scheduled', 'Active', 'Paused', 'Closed', 'Archived') DEFAULT 'Scheduled',
    total_eligible_voters INT,
    created_by INT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    is_active BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (created_by) REFERENCES admins(admin_id),
    INDEX idx_status (status),
    INDEX idx_start_date (start_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 4: CANDIDATES (Voting Options/Candidates)
-- ===================================================
CREATE TABLE IF NOT EXISTS candidates (
    candidate_id INT AUTO_INCREMENT PRIMARY KEY,
    election_id INT NOT NULL,
    candidate_number VARCHAR(10),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    party_name VARCHAR(100),
    party_symbol VARCHAR(50),
    candidate_photo VARCHAR(255) COMMENT 'Path to candidate photo',
    bio TEXT,
    platform TEXT COMMENT 'Candidate platform/manifesto',
    vote_count INT DEFAULT 0,
    position VARCHAR(50) COMMENT 'President, Governor, Mayor, etc.',
    status ENUM('Active', 'Withdrawn', 'Disqualified') DEFAULT 'Active',
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (election_id) REFERENCES elections(election_id) ON DELETE CASCADE,
    UNIQUE KEY unique_candidate (election_id, candidate_number),
    INDEX idx_election_id (election_id),
    INDEX idx_party_name (party_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 5: VOTES (Vote Records)
-- ===================================================
CREATE TABLE IF NOT EXISTS votes (
    vote_id INT AUTO_INCREMENT PRIMARY KEY,
    election_id INT NOT NULL,
    user_id INT NOT NULL,
    candidate_id INT NOT NULL,
    vote_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    voting_mode ENUM('Online', 'Manual') DEFAULT 'Online',
    ip_address VARCHAR(45),
    device_info VARCHAR(255),
    verified BOOLEAN DEFAULT TRUE,
    is_valid BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (election_id) REFERENCES elections(election_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (candidate_id) REFERENCES candidates(candidate_id) ON DELETE CASCADE,
    UNIQUE KEY unique_vote (election_id, user_id) COMMENT 'One vote per user per election',
    INDEX idx_election_id (election_id),
    INDEX idx_user_id (user_id),
    INDEX idx_candidate_id (candidate_id),
    INDEX idx_vote_timestamp (vote_timestamp)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 6: VOTING_RESULTS (Election Results Summary)
-- ===================================================
CREATE TABLE IF NOT EXISTS voting_results (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    election_id INT NOT NULL,
    candidate_id INT,
    total_votes INT DEFAULT 0,
    vote_percentage DECIMAL(5, 2),
    rank INT,
    status ENUM('Counting', 'Provisional', 'Final', 'Contested') DEFAULT 'Provisional',
    result_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (election_id) REFERENCES elections(election_id) ON DELETE CASCADE,
    FOREIGN KEY (candidate_id) REFERENCES candidates(candidate_id) ON DELETE CASCADE,
    UNIQUE KEY unique_result (election_id, candidate_id),
    INDEX idx_election_id (election_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 7: AUDIT_LOGS (System Audit Trail)
-- ===================================================
CREATE TABLE IF NOT EXISTS audit_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    admin_id INT,
    action VARCHAR(100) NOT NULL COMMENT 'login, register, vote, view_results, etc.',
    entity_type VARCHAR(50) COMMENT 'users, elections, candidates, votes',
    entity_id INT,
    old_value TEXT,
    new_value TEXT,
    ip_address VARCHAR(45),
    description TEXT,
    log_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE SET NULL,
    FOREIGN KEY (admin_id) REFERENCES admins(admin_id) ON DELETE SET NULL,
    INDEX idx_action (action),
    INDEX idx_log_timestamp (log_timestamp),
    INDEX idx_user_id (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 8: NOTIFICATIONS (System Notifications)
-- ===================================================
CREATE TABLE IF NOT EXISTS notifications (
    notification_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    notification_type ENUM('Vote Confirmation', 'Election Update', 'Results', 'System', 'Error') DEFAULT 'System',
    title VARCHAR(150) NOT NULL,
    message TEXT NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    read_date TIMESTAMP NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    INDEX idx_user_id (user_id),
    INDEX idx_is_read (is_read)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 9: PASSWORD_RESET_TOKENS (Forgot Password)
-- ===================================================
CREATE TABLE IF NOT EXISTS password_reset_tokens (
    token_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    reset_token VARCHAR(255) UNIQUE NOT NULL,
    token_expiry DATETIME NOT NULL,
    is_used BOOLEAN DEFAULT FALSE,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    used_date TIMESTAMP NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    INDEX idx_reset_token (reset_token),
    INDEX idx_user_id (user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- TABLE 10: ELECTION_STATISTICS (Analytics)
-- ===================================================
CREATE TABLE IF NOT EXISTS election_statistics (
    stat_id INT AUTO_INCREMENT PRIMARY KEY,
    election_id INT NOT NULL,
    total_registered_voters INT DEFAULT 0,
    total_eligible_voters INT DEFAULT 0,
    total_votes_cast INT DEFAULT 0,
    voter_turnout DECIMAL(5, 2),
    invalid_votes INT DEFAULT 0,
    blank_votes INT DEFAULT 0,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (election_id) REFERENCES elections(election_id) ON DELETE CASCADE,
    UNIQUE KEY unique_election (election_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ===================================================
-- INDEXES FOR PERFORMANCE
-- ===================================================
CREATE INDEX idx_users_created_date ON users(registration_date);
CREATE INDEX idx_votes_created_date ON votes(vote_timestamp);
CREATE INDEX idx_elections_created_date ON elections(created_date);

-- ===================================================
-- END OF SCHEMA
-- ===================================================
