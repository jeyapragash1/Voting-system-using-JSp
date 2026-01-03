-- ===================================================
-- ONLINE VOTING SYSTEM - SAMPLE DATA
-- Created: January 3, 2026
-- ===================================================

USE online_voting_system;

-- ===================================================
-- SAMPLE DATA: ADMINS
-- ===================================================
INSERT INTO admins (admin_username, email, password, first_name, last_name, admin_level, phone, department) VALUES
('admin_super', 'admin@votingsystem.com', 'hashed_password_123', 'Rajesh', 'Kumar', 'Super Admin', '+91-9876543210', 'Election Commission'),
('election_admin1', 'election1@votingsystem.com', 'hashed_password_456', 'Priya', 'Sharma', 'Election Admin', '+91-9876543211', 'State Election Office'),
('moderator1', 'moderator1@votingsystem.com', 'hashed_password_789', 'Vikram', 'Singh', 'Moderator', '+91-9876543212', 'Technical Support'),
('election_admin2', 'election2@votingsystem.com', 'hashed_password_012', 'Anjali', 'Patel', 'Election Admin', '+91-9876543213', 'District Election Office'),
('moderator2', 'moderator2@votingsystem.com', 'hashed_password_345', 'Arjun', 'Reddy', 'Moderator', '+91-9876543214', 'Help Desk');

-- ===================================================
-- SAMPLE DATA: ELECTIONS
-- ===================================================
INSERT INTO elections (election_name, election_description, election_type, start_date, end_date, status, total_eligible_voters, created_by) VALUES
('General Election 2026', 'National General Election for Parliament', 'General', '2026-01-10 09:00:00', '2026-01-15 18:00:00', 'Scheduled', 950000, 1),
('State Assembly Elections 2026', 'State Legislative Assembly Elections', 'Primary', '2026-02-01 08:00:00', '2026-02-05 17:00:00', 'Scheduled', 500000, 2),
('Local Municipal Elections', 'City Corporation and Municipal Council Elections', 'Local', '2026-03-01 07:00:00', '2026-03-10 19:00:00', 'Scheduled', 250000, 2),
('Referendum on Constitutional Amendment', 'Public voting on proposed constitutional changes', 'Referendum', '2026-04-01 09:00:00', '2026-04-03 18:00:00', 'Scheduled', 100000, 1),
('Panchayat Elections 2026', 'Village Council and Panchayat Elections', 'Local', '2026-05-01 06:00:00', '2026-05-08 17:00:00', 'Scheduled', 150000, 4);

-- ===================================================
-- SAMPLE DATA: USERS (Voters)
-- ===================================================
INSERT INTO users (nic, username, email, password, first_name, last_name, phone, date_of_birth, gender, address, voter_status, has_voted) VALUES
('NIC001234567890', 'john_voter', 'john@example.com', 'hashed_pass_john', 'John', 'Anderson', '+91-8765432101', '1985-03-15', 'Male', '123 Main Street, City A', 'Eligible', FALSE),
('NIC001234567891', 'sarah_voter', 'sarah@example.com', 'hashed_pass_sarah', 'Sarah', 'Johnson', '+91-8765432102', '1990-07-22', 'Female', '456 Oak Avenue, City B', 'Eligible', FALSE),
('NIC001234567892', 'rahul_voter', 'rahul@example.com', 'hashed_pass_rahul', 'Rahul', 'Singh', '+91-8765432103', '1988-11-08', 'Male', '789 Elm Street, City C', 'Eligible', FALSE),
('NIC001234567893', 'maya_voter', 'maya@example.com', 'hashed_pass_maya', 'Maya', 'Patel', '+91-8765432104', '1992-05-30', 'Female', '321 Pine Road, City D', 'Registered', FALSE),
('NIC001234567894', 'arjun_voter', 'arjun@example.com', 'hashed_pass_arjun', 'Arjun', 'Kumar', '+91-8765432105', '1987-09-12', 'Male', '654 Maple Drive, City E', 'Eligible', FALSE);

-- ===================================================
-- SAMPLE DATA: CANDIDATES (for General Election)
-- ===================================================
INSERT INTO candidates (election_id, candidate_number, first_name, last_name, party_name, party_symbol, bio, platform, position) VALUES
(1, '001', 'Narendra', 'Modi', 'Bharatiya Janata Party', 'Lotus', 'Seasoned politician with 20+ years experience in governance', 'Economic growth, infrastructure development, Make in India', 'Prime Minister'),
(1, '002', 'Rahul', 'Gandhi', 'Indian National Congress', 'Hand', 'Youth-oriented leader focused on social welfare', 'Social security, education reform, rural development', 'Prime Minister'),
(1, '003', 'Arvind', 'Kejriwal', 'Aam Aadmi Party', 'Broom', 'Anti-corruption activist and Delhi CM', 'Good governance, transparency, anti-corruption measures', 'Prime Minister'),
(1, '004', 'Mamata', 'Banerjee', 'All India Trinamool Congress', 'Flower', 'Strong regional leader with grassroots support', 'Regional autonomy, workers rights, welfare schemes', 'Prime Minister'),
(1, '005', 'Uddhav', 'Thackeray', 'Shiv Sena', 'Bow and Arrow', 'Regional political leader from Maharashtra', 'Regional development, cultural preservation, industry support', 'Prime Minister');

-- ===================================================
-- SAMPLE DATA: CANDIDATES (for State Election)
-- ===================================================
INSERT INTO candidates (election_id, candidate_number, first_name, last_name, party_name, party_symbol, bio, platform) VALUES
(2, '101', 'Yogi', 'Adityanath', 'BJP', 'Lotus', 'Senior political leader with administration experience', 'State development, law and order, infrastructure'),
(2, '102', 'Priyanka', 'Gandhi', 'Congress', 'Hand', 'National political figure with state focus', 'Welfare schemes, education, healthcare improvement'),
(2, '103', 'Akhilesh', 'Yadav', 'Samajwadi Party', 'Bicycle', 'Young progressive leader', 'Youth employment, agriculture support, skill development'),
(2, '104', 'Jayram', 'Ramesh', 'TMC', 'Flower', 'Dynamic political activist', 'Transparency, accountability, public welfare'),
(2, '105', 'Devendra', 'Fadnavis', 'Shiv Sena', 'Bow', 'Experienced administrator', 'Economic growth, farmer support, tourism development');

-- ===================================================
-- SAMPLE DATA: VOTES (Cast Votes)
-- ===================================================
INSERT INTO votes (election_id, user_id, candidate_id, voting_mode, ip_address, verified, is_valid) VALUES
(1, 1, 1, 'Online', '192.168.1.101', TRUE, TRUE),
(1, 2, 2, 'Online', '192.168.1.102', TRUE, TRUE),
(1, 3, 3, 'Online', '192.168.1.103', TRUE, TRUE),
(1, 4, 4, 'Online', '192.168.1.104', TRUE, TRUE),
(1, 5, 5, 'Online', '192.168.1.105', TRUE, TRUE);

-- ===================================================
-- SAMPLE DATA: VOTING_RESULTS (Election Results)
-- ===================================================
INSERT INTO voting_results (election_id, candidate_id, total_votes, vote_percentage, rank, status) VALUES
(1, 1, 325000, 34.21, 1, 'Provisional'),
(1, 2, 285000, 30.00, 2, 'Provisional'),
(1, 3, 195000, 20.53, 3, 'Provisional'),
(1, 4, 95000, 10.00, 4, 'Provisional'),
(1, 5, 55000, 5.79, 5, 'Provisional'),
(2, 6, 142000, 28.40, 1, 'Provisional'),
(2, 7, 138000, 27.60, 2, 'Provisional'),
(2, 8, 115000, 23.00, 3, 'Provisional'),
(2, 9, 85000, 17.00, 4, 'Provisional'),
(2, 10, 20000, 4.00, 5, 'Provisional');

-- ===================================================
-- SAMPLE DATA: AUDIT_LOGS (System Activity)
-- ===================================================
INSERT INTO audit_logs (user_id, admin_id, action, entity_type, entity_id, description, ip_address) VALUES
(1, NULL, 'register', 'users', 1, 'User registered for voting', '192.168.1.101'),
(2, NULL, 'register', 'users', 2, 'User registered for voting', '192.168.1.102'),
(NULL, 1, 'create_election', 'elections', 1, 'Admin created new election', '192.168.1.50'),
(1, NULL, 'login', 'users', 1, 'User logged into system', '192.168.1.101'),
(NULL, 2, 'create_candidates', 'candidates', 1, 'Admin added candidates for election', '192.168.1.51');

-- ===================================================
-- SAMPLE DATA: NOTIFICATIONS
-- ===================================================
INSERT INTO notifications (user_id, notification_type, title, message, is_read) VALUES
(1, 'Election Update', 'Election Scheduled', 'General Election 2026 has been scheduled for January 10-15, 2026', FALSE),
(2, 'Vote Confirmation', 'Vote Submitted Successfully', 'Your vote has been recorded and counted', TRUE),
(3, 'Results', 'Election Results Available', 'Results for General Election 2026 are now available', FALSE),
(4, 'Election Update', 'Reminder: Vote Soon', 'Voting for State Assembly Elections closes on Feb 5, 2026', FALSE),
(5, 'System', 'Password Changed', 'Your password has been successfully changed', TRUE);

-- ===================================================
-- SAMPLE DATA: PASSWORD_RESET_TOKENS
-- ===================================================
INSERT INTO password_reset_tokens (user_id, reset_token, token_expiry, is_used) VALUES
(1, 'reset_token_abc123def456ghi789jkl', '2026-01-04 10:00:00', FALSE),
(2, 'reset_token_xyz789uvw456rst123opq', '2026-01-04 12:00:00', TRUE),
(3, 'reset_token_mnp321qrs654tuv987wxyz', '2026-01-05 09:00:00', FALSE),
(4, 'reset_token_ijk147lmn258opq369rst', '2026-01-05 14:00:00', FALSE),
(5, 'reset_token_efg963hij456klm789nop', '2026-01-06 11:00:00', TRUE);

-- ===================================================
-- SAMPLE DATA: ELECTION_STATISTICS
-- ===================================================
INSERT INTO election_statistics (election_id, total_registered_voters, total_eligible_voters, total_votes_cast, voter_turnout, invalid_votes, blank_votes) VALUES
(1, 950000, 950000, 950000, 100.00, 0, 0),
(2, 500000, 500000, 500000, 100.00, 0, 0),
(3, 250000, 240000, 125000, 52.08, 150, 200),
(4, 100000, 95000, 85000, 89.47, 50, 100),
(5, 150000, 148000, 75000, 50.68, 75, 150);

-- ===================================================
-- VERIFY DATA INSERTION
-- ===================================================
-- Run these queries to verify data was inserted correctly:
-- SELECT COUNT(*) as admin_count FROM admins;
-- SELECT COUNT(*) as user_count FROM users;
-- SELECT COUNT(*) as election_count FROM elections;
-- SELECT COUNT(*) as candidate_count FROM candidates;
-- SELECT COUNT(*) as vote_count FROM votes;

-- ===================================================
-- END OF SAMPLE DATA
-- ===================================================
