# 🗄️ Online Voting System - Database Setup & Complete Guide

## 📌 Quick Summary

Your voting system database has been completely restored with:
- **10 Database Tables** with proper relationships
- **50+ Sample Data Records** (5 entries per table minimum)
- **Complete SQL Scripts** ready to run
- **Java Database Helper Classes** for integration
- **Security & Audit Trail** implementation

---

## 📂 Database Files Included

```
database/
├── database_schema.sql          # Complete database schema (10 tables)
├── sample_data.sql              # 50+ sample records for all tables
├── quick_setup.sql              # One-click setup script
├── DATABASE_SETUP_GUIDE.md      # Detailed documentation
└── README.md                    # This file

src/
├── com/votingsystem/database/
│   └── DatabaseConnection.java  # Connection manager
├── com/votingsystem/dao/
│   └── UserDAO.java             # Data Access Object example
└── com/votingsystem/model/
    └── User.java                # User model class
```

---

## 🚀 Installation - 3 Easy Steps

### **Step 1: Open MySQL Command Line**
```bash
mysql -u root -p
```

### **Step 2: Run Database Setup**
```bash
-- Create database and all tables:
SOURCE C:/path/to/database_schema.sql;

-- Insert sample data:
SOURCE C:/path/to/sample_data.sql;
```

**OR** (Recommended - Single File)
```bash
SOURCE C:/path/to/quick_setup.sql;
```

### **Step 3: Verify Installation**
```sql
-- Check database exists
SHOW DATABASES;
USE online_voting_system;

-- Count all records
SELECT 'Users' as table_name, COUNT(*) as count FROM users
UNION ALL
SELECT 'Admins', COUNT(*) FROM admins
UNION ALL
SELECT 'Elections', COUNT(*) FROM elections
UNION ALL
SELECT 'Candidates', COUNT(*) FROM candidates
UNION ALL
SELECT 'Votes', COUNT(*) FROM votes;
```

---

## 📊 10 Database Tables Overview

### **1. USERS** (Voter Registration) ✅
- Stores voter information and registration details
- **Sample Records:** 5 voters with different statuses
- **Key Fields:** NIC, username, email, voter_status, has_voted

| User | NIC | Status | Email |
|------|-----|--------|-------|
| john_voter | NIC001234567890 | Eligible | john@example.com |
| sarah_voter | NIC001234567891 | Eligible | sarah@example.com |
| rahul_voter | NIC001234567892 | Eligible | rahul@example.com |
| maya_voter | NIC001234567893 | Registered | maya@example.com |
| arjun_voter | NIC001234567894 | Eligible | arjun@example.com |

---

### **2. ADMINS** (Administrative Users) ✅
- Manages admin accounts with different privilege levels
- **Sample Records:** 5 admins (Super Admin, Election Admins, Moderators)
- **Roles:** Super Admin, Election Admin, Moderator

| Admin Username | Level | Department |
|---|---|---|
| admin_super | Super Admin | Election Commission |
| election_admin1 | Election Admin | State Election Office |
| moderator1 | Moderator | Technical Support |
| election_admin2 | Election Admin | District Election Office |
| moderator2 | Moderator | Help Desk |

---

### **3. ELECTIONS** (Voting Events) ✅
- Stores different elections/voting events
- **Sample Records:** 5 elections (General, Primary, Local, Referendum)
- **Types:** General, Primary, Local, Referendum

| Election | Type | Eligible Voters | Status |
|---|---|---|---|
| General Election 2026 | General | 950,000 | Scheduled |
| State Assembly Elections 2026 | Primary | 500,000 | Scheduled |
| Local Municipal Elections | Local | 250,000 | Scheduled |
| Referendum on Constitutional Amendment | Referendum | 100,000 | Scheduled |
| Panchayat Elections 2026 | Local | 150,000 | Scheduled |

---

### **4. CANDIDATES** (Voting Options) ✅
- Candidate information for each election
- **Sample Records:** 10 candidates (5 for General, 5 for State Assembly)
- **Fields:** Name, party, symbol, bio, platform

**General Election Candidates:**
1. Narendra Modi (Bharatiya Janata Party - Lotus)
2. Rahul Gandhi (Indian National Congress - Hand)
3. Arvind Kejriwal (Aam Aadmi Party - Broom)
4. Mamata Banerjee (All India Trinamool Congress - Flower)
5. Uddhav Thackeray (Shiv Sena - Bow and Arrow)

**State Assembly Candidates:**
1. Yogi Adityanath (BJP - Lotus)
2. Priyanka Gandhi (Congress - Hand)
3. Akhilesh Yadav (Samajwadi Party - Bicycle)
4. Jayram Ramesh (TMC - Flower)
5. Devendra Fadnavis (Shiv Sena - Bow)

---

### **5. VOTES** (Vote Records) ✅
- Actual votes cast by voters (anonymized for privacy)
- **Sample Records:** 5 votes (one per voter)
- **Constraints:** One vote per user per election

| Voter | Candidate | Timestamp | Valid |
|---|---|---|---|
| john_voter | Narendra Modi | 2026-01-03 10:15:00 | ✅ |
| sarah_voter | Rahul Gandhi | 2026-01-03 11:20:00 | ✅ |
| rahul_voter | Arvind Kejriwal | 2026-01-03 12:30:00 | ✅ |
| maya_voter | Mamata Banerjee | 2026-01-03 13:45:00 | ✅ |
| arjun_voter | Uddhav Thackeray | 2026-01-03 14:50:00 | ✅ |

---

### **6. VOTING_RESULTS** (Election Results) ✅
- Aggregated election results
- **Sample Records:** 10 results (5 candidates per election)
- **Status:** Provisional/Final/Counting

**General Election Results:**
| Candidate | Votes | Percentage | Rank |
|---|---|---|---|
| Narendra Modi | 325,000 | 34.21% | 1 |
| Rahul Gandhi | 285,000 | 30.00% | 2 |
| Arvind Kejriwal | 195,000 | 20.53% | 3 |
| Mamata Banerjee | 95,000 | 10.00% | 4 |
| Uddhav Thackeray | 55,000 | 5.79% | 5 |

---

### **7. AUDIT_LOGS** (System Activity Tracking) ✅
- Tracks all system activities for security
- **Sample Records:** 5 log entries (registration, login, admin actions)
- **Actions:** register, login, create_election, create_candidates

| Action | User | Entity | IP Address | Time |
|---|---|---|---|---|
| register | john_voter | users | 192.168.1.101 | 2026-01-03 09:00:00 |
| login | john_voter | users | 192.168.1.101 | 2026-01-03 10:15:00 |
| create_election | admin_super | elections | 192.168.1.50 | 2026-01-02 08:00:00 |
| create_candidates | election_admin1 | candidates | 192.168.1.51 | 2026-01-02 09:30:00 |

---

### **8. NOTIFICATIONS** (System Notifications) ✅
- Sends notifications to users
- **Sample Records:** 5 notifications (election updates, vote confirmations)
- **Types:** Election Update, Vote Confirmation, Results, System

| User | Type | Title | Status |
|---|---|---|---|
| john_voter | Election Update | Election Scheduled | Unread |
| sarah_voter | Vote Confirmation | Vote Submitted Successfully | Read |
| rahul_voter | Results | Election Results Available | Unread |
| maya_voter | Election Update | Reminder: Vote Soon | Unread |
| arjun_voter | System | Password Changed | Read |

---

### **9. PASSWORD_RESET_TOKENS** (Forgot Password) ✅
- Manages password reset tokens
- **Sample Records:** 5 tokens with expiry times
- **Features:** Token expiry, one-time use tracking

---

### **10. ELECTION_STATISTICS** (Analytics) ✅
- Stores election statistics and analytics
- **Sample Records:** 5 elections with voter turnout data
- **Metrics:** Turnout %, invalid votes, blank votes

| Election | Eligible Voters | Votes Cast | Turnout | Invalid |
|---|---|---|---|---|
| General Election 2026 | 950,000 | 950,000 | 100.00% | 0 |
| State Assembly 2026 | 500,000 | 500,000 | 100.00% | 0 |
| Local Municipal | 250,000 | 125,000 | 52.08% | 150 |
| Referendum | 100,000 | 85,000 | 89.47% | 50 |
| Panchayat Elections | 150,000 | 75,000 | 50.68% | 75 |

---

## 🔗 Database Relationships (ER Diagram)

```
┌──────────────┐         ┌──────────────┐
│    ADMINS    │─────────│  ELECTIONS   │
└──────────────┘         └──────────────┘
                                │
                                ├─────────┬────────────┐
                                ▼         ▼            ▼
                        ┌──────────────┬──────────┬─────────────┐
                        │  CANDIDATES  │  VOTES   │ VOTING_RESULTS
                        └──────┬───────┴────┬─────┴──────┬──────┘
                               │            │            │
                        ┌──────▼──────────┐ │  ┌────────▼────────┐
                        │     USERS       │ └──┤ ELECTION_STATS  │
                        │   (Voters)      │    └─────────────────┘
                        └────────┬────────┘
                                 │
                    ┌────────────┼───────────┐
                    ▼            ▼           ▼
           ┌────────────┐  ┌────────────┐  ┌─────────────────┐
           │AUDIT_LOGS  │  │NOTIF'S     │  │PASSWORD_TOKENS  │
           └────────────┘  └────────────┘  └─────────────────┘
```

---

## 💾 Database Configuration for JSP

### **Option 1: JDBC URL (Recommended)**
```
jdbc:mysql://localhost:3306/online_voting_system?useSSL=false&serverTimezone=UTC
```

### **Option 2: Using DatabaseConnection Class**
```java
// In your JSP or Servlet
Connection conn = DatabaseConnection.getConnection();

// Use connection...

// Close connection
DatabaseConnection.closeConnection(conn);
```

### **Option 3: Direct Connection**
```java
String url = "jdbc:mysql://localhost:3306/online_voting_system";
String user = "root";
String password = "your_password";

Connection conn = DriverManager.getConnection(url, user, password);
```

---

## 🔐 Security Configuration

### **1. Create Dedicated Database User (Recommended)**
```sql
-- Create user for application
CREATE USER 'voting_app'@'localhost' IDENTIFIED BY 'secure_password_123';

-- Grant specific permissions
GRANT SELECT, INSERT, UPDATE, DELETE ON online_voting_system.* TO 'voting_app'@'localhost';

-- Flush privileges
FLUSH PRIVILEGES;
```

### **2. Update DatabaseConnection.java**
```java
private static final String DB_USER = "voting_app";
private static final String DB_PASSWORD = "secure_password_123";
```

### **3. Enable SSL Connection** (Production)
```java
String url = "jdbc:mysql://localhost:3306/online_voting_system?useSSL=true&requireSSL=true";
```

---

## 🛠️ Common Database Operations

### **Query 1: View Election Results**
```sql
SELECT c.first_name, c.last_name, c.party_name, vr.total_votes, vr.vote_percentage
FROM voting_results vr
JOIN candidates c ON vr.candidate_id = c.candidate_id
WHERE vr.election_id = 1
ORDER BY vr.rank;
```

### **Query 2: Voter Participation Rate**
```sql
SELECT e.election_name, es.voter_turnout, es.total_votes_cast, es.total_eligible_voters
FROM election_statistics es
JOIN elections e ON es.election_id = e.election_id;
```

### **Query 3: User Audit Trail**
```sql
SELECT action, description, log_timestamp, ip_address
FROM audit_logs
WHERE user_id = 1
ORDER BY log_timestamp DESC;
```

### **Query 4: Eligible Voters**
```sql
SELECT user_id, first_name, last_name, email, has_voted
FROM users
WHERE voter_status = 'Eligible' AND is_active = true
ORDER BY registration_date;
```

### **Query 5: Most Voted Candidate**
```sql
SELECT c.first_name, c.last_name, COUNT(v.vote_id) as vote_count, e.election_name
FROM votes v
JOIN candidates c ON v.candidate_id = c.candidate_id
JOIN elections e ON v.election_id = e.election_id
GROUP BY c.candidate_id, e.election_id
ORDER BY vote_count DESC
LIMIT 1;
```

---

## 📝 Required JAR Files for JSP

Add these to your project's `WEB-INF/lib/` folder:

```
mysql-connector-java-8.0.23.jar  (MySQL JDBC Driver)
javax.servlet-api-3.1.0.jar      (Servlet API)
mysql-connector-java-5.1.49.jar  (Alternative older version)
```

---

## 🧪 Testing Database Connection

### **Using Java Test Class**
```java
public class DatabaseTest {
    public static void main(String[] args) {
        // Print configuration
        DatabaseConnection.printConnectionInfo();
        
        // Test connection
        if (DatabaseConnection.testConnection()) {
            System.out.println("Database setup successful!");
        } else {
            System.out.println("Database connection failed!");
        }
    }
}
```

### **Using SQL Query**
```sql
-- Test query to verify setup
SELECT 
    (SELECT COUNT(*) FROM users) as users,
    (SELECT COUNT(*) FROM admins) as admins,
    (SELECT COUNT(*) FROM elections) as elections,
    (SELECT COUNT(*) FROM candidates) as candidates,
    (SELECT COUNT(*) FROM votes) as votes;
```

---

## 🗑️ Reset/Cleanup Commands

### **Delete All Sample Data (Keep Structure)**
```sql
-- Disable foreign key checks
SET FOREIGN_KEY_CHECKS = 0;

-- Delete all data
DELETE FROM password_reset_tokens;
DELETE FROM notifications;
DELETE FROM audit_logs;
DELETE FROM election_statistics;
DELETE FROM voting_results;
DELETE FROM votes;
DELETE FROM candidates;
DELETE FROM elections;
DELETE FROM users;
DELETE FROM admins;

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

-- Reset auto-increment
ALTER TABLE users AUTO_INCREMENT = 1;
ALTER TABLE admins AUTO_INCREMENT = 1;
ALTER TABLE elections AUTO_INCREMENT = 1;
ALTER TABLE candidates AUTO_INCREMENT = 1;
```

### **Drop Entire Database**
```sql
DROP DATABASE online_voting_system;
```

---

## 📞 Troubleshooting

### **Problem: "Access denied for user 'root'@'localhost'"**
```bash
# Solution: Login without password
mysql -u root

# Or reset MySQL password
mysqld --skip-grant-tables
```

### **Problem: "Unknown database 'online_voting_system'"**
```sql
-- Solution: Check if database exists
SHOW DATABASES;

-- Recreate if missing
SOURCE database_schema.sql;
```

### **Problem: "Table already exists"**
```sql
-- Solution: Drop and recreate
DROP DATABASE online_voting_system;
SOURCE database_schema.sql;
```

---

## 📚 File Locations

```
Project Root
├── database/
│   ├── database_schema.sql           ✅ Main database schema
│   ├── sample_data.sql               ✅ Sample data (50+ records)
│   ├── quick_setup.sql               ✅ One-click setup
│   └── DATABASE_SETUP_GUIDE.md       ✅ Detailed guide
│
└── src/
    └── com/votingsystem/
        ├── database/
        │   └── DatabaseConnection.java    ✅ Connection manager
        ├── dao/
        │   └── UserDAO.java               ✅ User data access
        └── model/
            └── User.java                  ✅ User model
```

---

## ✅ Verification Checklist

- [ ] Database created (`online_voting_system`)
- [ ] All 10 tables created
- [ ] Sample data inserted (50+ records)
- [ ] Users table populated (5 voters)
- [ ] Admins table populated (5 admins)
- [ ] Elections table populated (5 elections)
- [ ] Candidates table populated (10 candidates)
- [ ] Votes table populated (5 votes)
- [ ] Foreign keys working
- [ ] DatabaseConnection.java configured
- [ ] JDBC driver available

---

## 🎯 Next Steps

1. **Configure DatabaseConnection.java** with your MySQL credentials
2. **Add MySQL JDBC driver** to project classpath
3. **Update JSP files** to use DatabaseConnection class
4. **Create login servlet** using UserDAO
5. **Test connection** with provided test class
6. **Implement voting logic** using VoteDAO (similar to UserDAO)

---

## 📖 Related Documentation

- See `PROJECT_ANALYSIS.md` for project overview
- See `DATABASE_SETUP_GUIDE.md` for detailed table information
- See `database_schema.sql` for complete SQL structure
- See `sample_data.sql` for all sample records

---

## 👤 Author & Support

**Created:** January 3, 2026  
**Database Version:** 1.0  
**Compatible With:** MySQL 5.7+, Java 8+, JSP 2.2+

For issues or questions, refer to the detailed guides in the `/database` folder.

---

**🎉 Your database is ready to use!**
