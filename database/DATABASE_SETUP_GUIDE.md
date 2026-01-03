# Online Voting System - Database Setup Guide

## 📊 Database Overview

The voting system uses **MySQL** database with 10 interconnected tables designed for efficient voting management, security, and audit trail tracking.

---

## 🗄️ Database Tables & Structure

### **TABLE 1: USERS** (Voter Registration)
Stores information about registered voters.

| Column | Type | Details |
|--------|------|---------|
| user_id | INT (PK) | Auto-increment, unique identifier |
| nic | VARCHAR(20) UNIQUE | National/Voter ID - unique |
| username | VARCHAR(50) UNIQUE | Login username |
| email | VARCHAR(100) UNIQUE | Email address |
| password | VARCHAR(255) | Hashed password (NEVER store plain text) |
| first_name | VARCHAR(50) | First name |
| last_name | VARCHAR(50) | Last name |
| phone | VARCHAR(15) | Contact number |
| date_of_birth | DATE | Birth date |
| gender | ENUM | Male, Female, Other |
| address | TEXT | Residential address |
| voter_status | ENUM | Registered, Eligible, Inactive, Disqualified |
| has_voted | BOOLEAN | Track if user voted |
| voted_at | TIMESTAMP | When user cast their vote |
| registration_date | TIMESTAMP | Account creation date |
| last_login | TIMESTAMP | Last login timestamp |
| is_active | BOOLEAN | Account status |

**Sample Data:**
```
NIC: NIC001234567890, Username: john_voter, Status: Eligible
NIC: NIC001234567891, Username: sarah_voter, Status: Eligible
NIC: NIC001234567892, Username: rahul_voter, Status: Eligible
NIC: NIC001234567893, Username: maya_voter, Status: Registered
NIC: NIC001234567894, Username: arjun_voter, Status: Eligible
```

---

### **TABLE 2: ADMINS** (Admin Users)
Manages administrative users with different privilege levels.

| Column | Type | Details |
|--------|------|---------|
| admin_id | INT (PK) | Auto-increment, unique identifier |
| admin_username | VARCHAR(50) UNIQUE | Admin login username |
| email | VARCHAR(100) UNIQUE | Admin email |
| password | VARCHAR(255) | Hashed password |
| first_name | VARCHAR(50) | First name |
| last_name | VARCHAR(50) | Last name |
| admin_level | ENUM | Super Admin, Election Admin, Moderator |
| phone | VARCHAR(15) | Contact number |
| department | VARCHAR(100) | Department name |
| permissions | TEXT | JSON/comma-separated permissions |
| created_date | TIMESTAMP | Account creation |
| last_login | TIMESTAMP | Last login |
| is_active | BOOLEAN | Account status |

**Sample Data:**
```
1. admin_super (Super Admin) - Full system access
2. election_admin1 (Election Admin) - Manage elections
3. moderator1 (Moderator) - Technical support
4. election_admin2 (Election Admin) - State level
5. moderator2 (Moderator) - Help desk
```

---

### **TABLE 3: ELECTIONS** (Voting Events)
Stores information about individual elections/voting events.

| Column | Type | Details |
|--------|------|---------|
| election_id | INT (PK) | Auto-increment, unique identifier |
| election_name | VARCHAR(150) | Name of election |
| election_description | TEXT | Detailed description |
| election_type | ENUM | General, Primary, Local, Referendum |
| start_date | DATETIME | Voting start date/time |
| end_date | DATETIME | Voting end date/time |
| status | ENUM | Scheduled, Active, Paused, Closed, Archived |
| total_eligible_voters | INT | Count of eligible voters |
| created_by | INT (FK) | Admin who created election |
| created_date | TIMESTAMP | Creation date |
| modified_date | TIMESTAMP | Last modification |
| is_active | BOOLEAN | Active status |

**Sample Data:**
```
1. General Election 2026 (General) - 950,000 voters
2. State Assembly Elections 2026 (Primary) - 500,000 voters
3. Local Municipal Elections (Local) - 250,000 voters
4. Referendum on Constitutional Amendment (Referendum) - 100,000 voters
5. Panchayat Elections 2026 (Local) - 150,000 voters
```

---

### **TABLE 4: CANDIDATES** (Voting Options)
Stores candidate information for each election.

| Column | Type | Details |
|--------|------|---------|
| candidate_id | INT (PK) | Auto-increment, unique identifier |
| election_id | INT (FK) | Reference to election |
| candidate_number | VARCHAR(10) | Candidate number/symbol |
| first_name | VARCHAR(50) | Candidate first name |
| last_name | VARCHAR(50) | Candidate last name |
| party_name | VARCHAR(100) | Political party name |
| party_symbol | VARCHAR(50) | Party symbol name |
| candidate_photo | VARCHAR(255) | Path to photo |
| bio | TEXT | Candidate biography |
| platform | TEXT | Campaign platform/manifesto |
| vote_count | INT | Total votes received |
| position | VARCHAR(50) | Position (President, Governor, etc.) |
| status | ENUM | Active, Withdrawn, Disqualified |
| created_date | TIMESTAMP | Creation date |

**Sample Data (General Election):**
```
1. Narendra Modi (Bharatiya Janata Party) - Lotus symbol
2. Rahul Gandhi (Indian National Congress) - Hand symbol
3. Arvind Kejriwal (Aam Aadmi Party) - Broom symbol
4. Mamata Banerjee (All India Trinamool Congress) - Flower symbol
5. Uddhav Thackeray (Shiv Sena) - Bow and Arrow symbol
```

---

### **TABLE 5: VOTES** (Vote Records)
Stores actual votes cast by voters (anonymized).

| Column | Type | Details |
|--------|------|---------|
| vote_id | INT (PK) | Auto-increment, unique identifier |
| election_id | INT (FK) | Reference to election |
| user_id | INT (FK) | Reference to voter |
| candidate_id | INT (FK) | Reference to candidate |
| vote_timestamp | TIMESTAMP | When vote was cast |
| voting_mode | ENUM | Online, Manual |
| ip_address | VARCHAR(45) | IP address of voter |
| device_info | VARCHAR(255) | Device information |
| verified | BOOLEAN | Vote verification status |
| is_valid | BOOLEAN | Vote validity status |

**Unique Constraint:** One vote per user per election (vote_id is PRIMARY, election_id+user_id is UNIQUE)

**Sample Data:**
```
5 votes cast for General Election 2026 (one per sample user)
User 1 → Narendra Modi
User 2 → Rahul Gandhi
User 3 → Arvind Kejriwal
User 4 → Mamata Banerjee
User 5 → Uddhav Thackeray
```

---

### **TABLE 6: VOTING_RESULTS** (Election Results)
Stores aggregated results for each election.

| Column | Type | Details |
|--------|------|---------|
| result_id | INT (PK) | Auto-increment, unique identifier |
| election_id | INT (FK) | Reference to election |
| candidate_id | INT (FK) | Reference to candidate |
| total_votes | INT | Total votes received |
| vote_percentage | DECIMAL(5,2) | Percentage of total votes |
| rank | INT | Ranking (1st, 2nd, 3rd, etc.) |
| status | ENUM | Counting, Provisional, Final, Contested |
| result_date | TIMESTAMP | When results were calculated |

**Sample Data (General Election Results):**
```
1. Narendra Modi - 325,000 votes (34.21%) - Rank 1
2. Rahul Gandhi - 285,000 votes (30.00%) - Rank 2
3. Arvind Kejriwal - 195,000 votes (20.53%) - Rank 3
4. Mamata Banerjee - 95,000 votes (10.00%) - Rank 4
5. Uddhav Thackeray - 55,000 votes (5.79%) - Rank 5
```

---

### **TABLE 7: AUDIT_LOGS** (System Audit Trail)
Tracks all system activities for security and compliance.

| Column | Type | Details |
|--------|------|---------|
| log_id | INT (PK) | Auto-increment, unique identifier |
| user_id | INT (FK) | Reference to user (if user action) |
| admin_id | INT (FK) | Reference to admin (if admin action) |
| action | VARCHAR(100) | Action type (login, register, vote, etc.) |
| entity_type | VARCHAR(50) | Type of entity affected |
| entity_id | INT | ID of affected entity |
| old_value | TEXT | Previous value (for updates) |
| new_value | TEXT | New value (for updates) |
| ip_address | VARCHAR(45) | IP address from which action was taken |
| description | TEXT | Detailed description |
| log_timestamp | TIMESTAMP | When action occurred |

**Sample Data:**
```
1. User registration - john_voter
2. User registration - sarah_voter
3. Admin creates election - General Election 2026
4. User login - john_voter
5. Admin adds candidates - 5 candidates added
```

---

### **TABLE 8: NOTIFICATIONS** (System Notifications)
Sends notifications to users about elections and voting.

| Column | Type | Details |
|--------|------|---------|
| notification_id | INT (PK) | Auto-increment, unique identifier |
| user_id | INT (FK) | Reference to user |
| notification_type | ENUM | Vote Confirmation, Election Update, Results, System, Error |
| title | VARCHAR(150) | Notification title |
| message | TEXT | Notification message |
| is_read | BOOLEAN | Read status |
| created_date | TIMESTAMP | Creation date |
| read_date | TIMESTAMP | When user read it |

**Sample Data:**
```
1. Election Scheduled - "General Election 2026 has been scheduled"
2. Vote Confirmation - "Your vote has been recorded"
3. Results Available - "Results for General Election 2026 are now available"
4. Voting Reminder - "Voting for State Assembly Elections closes on Feb 5"
5. Password Changed - "Your password has been successfully changed"
```

---

### **TABLE 9: PASSWORD_RESET_TOKENS** (Forgot Password)
Manages password reset tokens for account recovery.

| Column | Type | Details |
|--------|------|---------|
| token_id | INT (PK) | Auto-increment, unique identifier |
| user_id | INT (FK) | Reference to user |
| reset_token | VARCHAR(255) UNIQUE | Unique reset token |
| token_expiry | DATETIME | When token expires |
| is_used | BOOLEAN | Whether token was used |
| created_date | TIMESTAMP | Token creation date |
| used_date | TIMESTAMP | When token was used |

**Sample Data:**
```
5 reset tokens for password recovery
Token validity: typically 24 hours from creation
```

---

### **TABLE 10: ELECTION_STATISTICS** (Analytics)
Stores aggregated statistics for elections.

| Column | Type | Details |
|--------|------|---------|
| stat_id | INT (PK) | Auto-increment, unique identifier |
| election_id | INT (FK) | Reference to election |
| total_registered_voters | INT | Total registered voters |
| total_eligible_voters | INT | Total eligible voters |
| total_votes_cast | INT | Total votes cast |
| voter_turnout | DECIMAL(5,2) | Turnout percentage |
| invalid_votes | INT | Number of invalid votes |
| blank_votes | INT | Number of blank votes |
| last_updated | TIMESTAMP | Last update time |

**Sample Data:**
```
Election 1: 950,000 voters, 100% turnout, 0 invalid votes
Election 2: 500,000 voters, 100% turnout, 0 invalid votes
Election 3: 250,000 voters, 52.08% turnout, 150 invalid votes
Election 4: 100,000 voters, 89.47% turnout, 50 invalid votes
Election 5: 150,000 voters, 50.68% turnout, 75 invalid votes
```

---

## 🚀 Installation Steps

### Step 1: Create Database
```sql
-- Run this in your MySQL client:
mysql -u root -p < database_schema.sql
```

### Step 2: Insert Sample Data
```sql
mysql -u root -p online_voting_system < sample_data.sql
```

### Step 3: Verify Installation
```sql
-- Connect to database:
mysql -u root -p online_voting_system

-- Run verification queries:
SELECT COUNT(*) as users FROM users;
SELECT COUNT(*) as admins FROM admins;
SELECT COUNT(*) as elections FROM elections;
SELECT COUNT(*) as candidates FROM candidates;
SELECT COUNT(*) as votes FROM votes;
```

---

## 📝 Database Configuration for JSP

### Connection String (MySQL)
```
jdbc:mysql://localhost:3306/online_voting_system?useSSL=false&serverTimezone=UTC
```

### JDBC Driver
```
com.mysql.jdbc.Driver  (for older versions)
com.mysql.cj.jdbc.Driver  (for MySQL 8+)
```

### Sample Connection Code (Java)
```java
String URL = "jdbc:mysql://localhost:3306/online_voting_system";
String USER = "root";
String PASSWORD = "your_password";

Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
```

---

## 🔐 Security Best Practices

1. **Password Hashing:** Always hash passwords (bcrypt, SHA-256)
2. **SQL Injection:** Use prepared statements to prevent SQL injection
3. **Access Control:** Implement role-based access control (RBAC)
4. **Audit Logs:** Track all administrative actions
5. **Data Encryption:** Encrypt sensitive data in transit
6. **Input Validation:** Validate all user inputs
7. **Session Management:** Implement secure session handling

---

## 🔄 Database Relationships

```
admins (1) ──→ (M) elections (created_by)
elections (1) ──→ (M) candidates
elections (1) ──→ (M) votes
users (1) ──→ (M) votes
candidates (1) ──→ (M) votes
elections (1) ──→ (1) voting_results
elections (1) ──→ (M) audit_logs
users (1) ──→ (M) notifications
users (1) ──→ (M) password_reset_tokens
elections (1) ──→ (1) election_statistics
```

---

## 📊 Key Indexes

- `users.nic` - Fast voter lookup
- `users.username` - Fast login lookup
- `votes.vote_timestamp` - Vote history queries
- `elections.status` - Filter elections by status
- `audit_logs.log_timestamp` - Historical queries
- `candidates.election_id` - Get candidates for election
- `votes.election_id` - Get votes for election

---

## 💡 Sample Queries

### Get Election Results
```sql
SELECT c.first_name, c.last_name, c.party_name, vr.total_votes, vr.vote_percentage, vr.rank
FROM voting_results vr
JOIN candidates c ON vr.candidate_id = c.candidate_id
WHERE vr.election_id = 1
ORDER BY vr.rank;
```

### Get Voter Participation
```sql
SELECT e.election_name, es.voter_turnout, es.total_votes_cast, es.total_eligible_voters
FROM election_statistics es
JOIN elections e ON es.election_id = e.election_id;
```

### Audit Trail for User
```sql
SELECT action, entity_type, description, log_timestamp
FROM audit_logs
WHERE user_id = 1
ORDER BY log_timestamp DESC;
```

---

## 📞 Support

For database issues or queries, refer to the sample data and schema files in the `/database` folder.

---

**Last Updated:** January 3, 2026  
**Database Version:** 1.0  
**MySQL Version:** 5.7+
