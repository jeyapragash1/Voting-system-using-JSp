-- ===================================================
-- QUICK SETUP SCRIPT FOR ONLINE VOTING SYSTEM
-- Run this file in MySQL to set up everything at once
-- ===================================================

-- Step 1: Create Database and Tables
-- Uncomment and run the lines from database_schema.sql above

-- Step 2: Create Database and Select
DROP DATABASE IF EXISTS online_voting_system;
CREATE DATABASE online_voting_system CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE online_voting_system;

-- Step 3: Create All Tables
-- [All tables from database_schema.sql]

-- Step 4: Create Database User for Application (MySQL)
-- Uncomment and run this to create a dedicated user:
/*
CREATE USER 'voting_app'@'localhost' IDENTIFIED BY 'secure_password_123';
GRANT ALL PRIVILEGES ON online_voting_system.* TO 'voting_app'@'localhost';
FLUSH PRIVILEGES;
*/

-- Step 5: Verify Database Setup
-- Run these queries to check:

-- Count all tables
SELECT 
  (SELECT COUNT(*) FROM users) as users_count,
  (SELECT COUNT(*) FROM admins) as admins_count,
  (SELECT COUNT(*) FROM elections) as elections_count,
  (SELECT COUNT(*) FROM candidates) as candidates_count,
  (SELECT COUNT(*) FROM votes) as votes_count,
  (SELECT COUNT(*) FROM voting_results) as results_count,
  (SELECT COUNT(*) FROM audit_logs) as logs_count,
  (SELECT COUNT(*) FROM notifications) as notifications_count,
  (SELECT COUNT(*) FROM password_reset_tokens) as tokens_count,
  (SELECT COUNT(*) FROM election_statistics) as statistics_count;

-- Check elections and their candidates
SELECT 
  e.election_id,
  e.election_name,
  COUNT(c.candidate_id) as candidate_count,
  e.status
FROM elections e
LEFT JOIN candidates c ON e.election_id = c.election_id
GROUP BY e.election_id, e.election_name, e.status;

-- Check vote results
SELECT 
  c.first_name,
  c.last_name,
  c.party_name,
  COUNT(v.vote_id) as vote_count,
  e.election_name
FROM votes v
JOIN candidates c ON v.candidate_id = c.candidate_id
JOIN elections e ON v.election_id = e.election_id
GROUP BY c.candidate_id, e.election_id
ORDER BY vote_count DESC;

-- ===================================================
-- Optional: Reset Commands
-- ===================================================

-- Clear all votes (for testing)
-- DELETE FROM votes;

-- Clear all users (preserves structure)
-- DELETE FROM users;

-- Reset user IDs
-- ALTER TABLE users AUTO_INCREMENT = 1;

-- ===================================================
-- END OF QUICK SETUP SCRIPT
-- ===================================================
