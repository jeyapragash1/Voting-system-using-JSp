# 🗳️ Online Voting System

A complete **Java JSP-based web application** for conducting secure, transparent online elections with voter registration, voting, and real-time result tracking.

## 📋 Table of Contents

- [Features](#features)
- [Technology Stack](#technology-stack)
- [Project Structure](#project-structure)
- [Database Setup](#database-setup)
- [Installation](#installation)
- [Usage](#usage)
- [Sample Data](#sample-data)
- [Security Features](#security-features)
- [Configuration](#configuration)
- [API/Endpoints](#apiendpoints)
- [Contributing](#contributing)
- [License](#license)

---

## ✨ Features

### 👤 User Features
- **User Registration** - Register as a voter with complete profile
- **Voter Login** - Secure NIC/Username and password authentication
- **Vote Casting** - Cast vote for preferred candidate in active elections
- **Vote Confirmation** - Get confirmation receipt after voting
- **Vote History** - View past voting records
- **Password Recovery** - Forgot password reset functionality
- **User Dashboard** - View eligible elections and voting status

### 🛡️ Admin Features
- **Election Management** - Create and manage voting events
- **Candidate Management** - Add candidates for elections
- **Vote Monitoring** - Track real-time voting progress
- **Result Publishing** - Publish and manage election results
- **User Management** - Manage voter accounts and eligibility
- **Audit Logs** - Complete activity tracking for security
- **Admin Dashboard** - Statistical overview and controls

### 🗳️ Election Features
- **Multiple Elections** - Support for General, Local, Referendum elections
- **Real-time Results** - Live vote counting and result updates
- **Vote Security** - One vote per user per election enforcement
- **Voter Turnout** - Track participation statistics
- **Candidate Rankings** - Automatic ranking based on votes
- **Election Scheduling** - Support for scheduled elections

---

## 🛠️ Technology Stack

| Layer | Technology |
|-------|-----------|
| **Frontend** | HTML5, CSS3, JavaScript |
| **Backend** | Java JSP (Java Server Pages) |
| **Framework** | Servlet 3.0+ |
| **Database** | MySQL 5.7+ |
| **Server** | Apache Tomcat 7+ |
| **Build Tool** | Apache Ant |
| **IDE** | NetBeans |
| **Java Version** | Java 1.8+ |

---

## 📂 Project Structure

```
Voting-system-using-JSp/
├── web/                          # Web Application Root
│   ├── index.jsp                 # Landing Page
│   ├── About.jsp                 # About Page
│   ├── Features.jsp              # Features Page
│   ├── contact.jsp               # Contact Page
│   ├── CSS/
│   │   └── index.css             # Global Stylesheet
│   ├── images/                   # Image Assets
│   ├── UsrRe/                    # User Registration/Authentication
│   │   ├── login.jsp             # Login Page
│   │   ├── register.jsp          # Registration Page
│   │   └── forgotPassword.jsp    # Password Recovery
│   ├── DashB/                    # Dashboards
│   │   ├── User.jsp              # User Dashboard
│   │   └── Admin.jsp             # Admin Dashboard
│   └── WEB-INF/
│       ├── web.xml               # Web Configuration
│       └── classes/              # Compiled Classes
│
├── src/                          # Source Code
│   └── com/votingsystem/
│       ├── database/
│       │   └── DatabaseConnection.java    # Connection Manager
│       ├── dao/
│       │   └── UserDAO.java              # User Data Access
│       └── model/
│           └── User.java                 # User Model
│
├── database/                     # Database Files
│   ├── database_schema.sql       # Database Schema (10 Tables)
│   ├── sample_data.sql           # Sample Data (55+ Records)
│   ├── quick_setup.sql           # One-Click Setup
│   └── README.md                 # Database Documentation
│
├── build.xml                     # Ant Build Configuration
├── nbproject/                    # NetBeans Project Configuration
└── README.md                     # This File
```

---

## 🗄️ Database Setup

### Database Tables

The system uses **10 interconnected tables**:

| Table | Purpose | Records |
|-------|---------|---------|
| **users** | Voter Registration | 5 sample |
| **admins** | Admin Accounts | 5 sample |
| **elections** | Voting Events | 5 sample |
| **candidates** | Voting Options | 10 sample |
| **votes** | Cast Votes | 5 sample |
| **voting_results** | Election Results | 10 sample |
| **audit_logs** | Activity Tracking | 5 sample |
| **password_reset_tokens** | Password Recovery | 5 sample |
| **election_statistics** | Analytics Data | 5 sample |

### Quick Database Setup

#### Step 1: Create Database and Tables
```bash
mysql -u root -p < database/database_schema.sql
```

#### Step 2: Insert Sample Data
```bash
mysql -u root -p < database/sample_data.sql
```

#### Step 3: Verify Installation
```bash
mysql -u root -p
USE online_voting_system;
SELECT COUNT(*) FROM users;        -- Should return 5
SELECT COUNT(*) FROM elections;    -- Should return 5
SELECT COUNT(*) FROM candidates;   -- Should return 10
```

#### Alternative: One-Click Setup
```bash
mysql -u root -p < database/quick_setup.sql
```

---

## 💻 Installation

### Prerequisites
- Java 1.8 or higher
- Apache Tomcat 7 or higher
- MySQL 5.7 or higher
- MySQL JDBC Driver

### Steps

1. **Clone the Repository**
   ```bash
   git clone https://github.com/jeyapragash1/Voting-system-using-JSp.git
   cd Voting-system-using-JSp
   ```

2. **Setup Database**
   ```bash
   mysql -u root -p < database/database_schema.sql
   mysql -u root -p < database/sample_data.sql
   ```

3. **Configure Database Connection**
   - Open: `src/com/votingsystem/database/DatabaseConnection.java`
   - Update these lines with your MySQL credentials:
   ```java
   private static final String DB_USER = "root";
   private static final String DB_PASSWORD = "your_password";
   private static final String DB_NAME = "sri_lanka_voting_system";
   ```

4. **Add MySQL JDBC Driver**
   - Download: `mysql-connector-java-8.0.23.jar`
   - Copy to: `web/WEB-INF/lib/`

5. **Build the Project**
   ```bash
   ant build
   ```

6. **Deploy to Tomcat**
   ```bash
   ant deploy
   # or copy build/web/ to tomcat/webapps/Sri-Lanka-Voting-System/
   ```

7. **Start Tomcat and Access**
   ```
   http://localhost:8080/Sri-Lanka-Voting-System/
   ```

---

## 🚀 Usage

### For Voters

1. **Register as a Voter**
   - Go to: `/UsrRe/register.jsp`
   - Fill in voter information (Sri Lankan National ID, Email, Password, etc.)
   - Click Register

2. **Login to Vote**
   - Go to: `/UsrRe/login.jsp`
   - Enter Sri Lankan National ID/Username and Password
   - Click Login

3. **Cast Your Vote**
   - View active elections on User Dashboard
   - Select desired election
   - Choose your preferred candidate
   - Confirm and submit vote
   - Receive vote confirmation

4. **View Results**
   - Go to Results section
   - View live election results
   - Check your voting history

### For Administrators

1. **Admin Login**
   - Access Admin Dashboard
   - Use admin credentials

2. **Create Election**
   - Go to: Election Management
   - Fill election details (name, dates, eligibility)
   - Set status as Active

3. **Add Candidates**
   - Go to: Candidate Management
   - Add candidate details (name, party, symbol)
   - Assign to election

4. **Monitor Voting**
   - View real-time vote counts
   - Check voter participation
   - Track statistics

5. **Publish Results**
   - When voting ends, generate results
   - Mark results as Final
   - View result breakdown

---

## 📊 Sample Data

### Sample Voters
```
1. anil_silva (anil.silva@example.com) - NIC: 195671234567V - Status: Eligible ✅
2. priya_perera (priya.perera@example.com) - NIC: 199234567890V - Status: Eligible ✅
3. roshan_jayasinghe (roshan.jayasinghe@example.com) - NIC: 198567890123V - Status: Eligible ✅
4. nisha_fernando (nisha.fernando@example.com) - NIC: 200123456789V - Status: Registered
5. dilshan_kumara (dilshan.kumara@example.com) - NIC: 199012345678V - Status: Eligible ✅
```

### Sample Elections
```
1. Presidential Election 2026 (15,000,000 voters) - Scheduled
2. Parliamentary Elections 2026 (14,000,000 voters) - Scheduled
3. Provincial Council Elections - Western (2,500,000 voters) - Scheduled
4. Local Government Elections 2026 (10,000,000 voters) - Scheduled
5. Pradeshiya Sabha Elections - Central (1,500,000 voters) - Scheduled
```

### Sample Candidates (Presidential Election)
```
1. Anura Kumara Dissanayake (JVP - Lamp) - 4,560,000 votes (34.21%)
2. Sajith Premadasa (SJB - Sword) - 3,990,000 votes (30.00%)
3. Namal Rajapaksa (SLPP - Elephant) - 2,730,000 votes (20.53%)
4. Harini Amarasuriya (ITAK - Hand) - 1,330,000 votes (10.00%)
5. Tiran Alles (TNPF - Star) - 770,000 votes (5.79%)
```

---

## 🔐 Security Features

- ✅ **Password Hashing** - Passwords stored using bcrypt/SHA-256
- ✅ **Audit Logging** - All user actions logged with IP address and timestamp
- ✅ **Role-Based Access Control** - Different permissions for Admin/User/Moderator
- ✅ **One Vote Per User** - Unique constraint prevents duplicate voting
- ✅ **Vote Privacy** - Voter identity separated from vote record
- ✅ **Session Management** - Secure session handling with login/logout
- ✅ **Password Reset** - Secure token-based password recovery
- ✅ **SQL Injection Prevention** - Prepared statements used throughout
- ✅ **HTTPS Support** - Ready for SSL/TLS encryption
- ✅ **Input Validation** - All inputs validated on server-side

---

## ⚙️ Configuration

### Database Configuration
Edit `src/com/votingsystem/database/DatabaseConnection.java`:

```java
private static final String DB_HOST = "localhost";
private static final String DB_PORT = "3306";
private static final String DB_NAME = "online_voting_system";
private static final String DB_USER = "root";
private static final String DB_PASSWORD = "your_password";
```

### JDBC URL
```
jdbc:mysql://localhost:3306/online_voting_system?useSSL=false&serverTimezone=UTC
```

### Tomcat Configuration
File: `web/META-INF/context.xml`
```xml
<Context path="/Online-Voting-System"/>
```

---

## 🔗 API/Endpoints

### Public Pages
- `GET /` - Landing Page
- `GET /About.jsp` - About Page
- `GET /Features.jsp` - Features Page
- `GET /contact.jsp` - Contact Page

### User Authentication
- `GET/POST /UsrRe/login.jsp` - User Login
- `GET/POST /UsrRe/register.jsp` - User Registration
- `GET/POST /UsrRe/forgotPassword.jsp` - Password Recovery

### User Dashboard
- `GET /DashB/User.jsp` - User Dashboard (Protected)
- `POST /vote` - Cast Vote
- `GET /results` - View Results

### Admin Dashboard
- `GET /DashB/Admin.jsp` - Admin Dashboard (Protected)
- `POST /election/create` - Create Election
- `POST /candidate/add` - Add Candidate
- `GET /statistics` - View Statistics

---

## 📝 Database Relationships

```
ADMINS (1) ──creates──→ ELECTIONS (M)
                            │
                    ┌───────┼───────┐
                    ▼       ▼       ▼
                CANDIDATES  VOTES  VOTING_RESULTS
                    ▲       │
                    └───────┘
                            │
                            ▼
                         USERS
                    ┌────────┬────────┬────────────┐
                    ▼        ▼        ▼            ▼
              AUDIT_LOGS  NOTIF'S  PASSWORD_TOKENS
```

---

## 🧪 Testing

### Test Database Connection
```java
DatabaseConnection.testConnection();
```

### Sample Login Credentials
```
Username: anil_silva
NIC: 195671234567V
```

### Test Queries
```sql
-- Check all tables
SELECT * FROM users;
SELECT * FROM elections;
SELECT * FROM candidates;
SELECT * FROM votes;

-- View election results
SELECT c.first_name, c.party_name, COUNT(v.vote_id) as votes
FROM votes v
JOIN candidates c ON v.candidate_id = c.candidate_id
GROUP BY c.candidate_id
ORDER BY votes DESC;
```

---

## 🛠️ Troubleshooting

### Database Connection Issues
- **Error**: "Access denied for user 'root'"
  - Solution: Update credentials in DatabaseConnection.java

- **Error**: "Unknown database 'online_voting_system'"
  - Solution: Run database_schema.sql first

- **Error**: "Table doesn't exist"
  - Solution: Run sample_data.sql to create tables

### JSP Issues
- **Error**: "Cannot find class"
  - Solution: Ensure MySQL JDBC driver is in WEB-INF/lib/

- **Error**: "500 Internal Server Error"
  - Solution: Check Tomcat logs for detailed error

---

## 📚 Database Schema

For detailed database documentation, see: `database/README.md`

Tables include:
- Complete voter management
- Election lifecycle management
- Real-time vote counting
- Results generation
- Activity audit trail
- Notification system
- Security tokens

---

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see LICENSE file for details.

---

## 📞 Support

For issues, questions, or suggestions:
- Open an issue on GitHub
- Contact: jeyapragash1@github.com

---

## 👨‍💻 Author

**Sri Lanka Election Commission - Voting System**
- GitHub: [@jeyapragash1](https://github.com/jeyapragash1)
- Adapted for Sri Lankan Elections

---

## 🎯 Project Status

- ✅ Frontend Complete (JSP Pages)
- ✅ Database Complete (10 Tables)
- ✅ Java Classes Complete
- ✅ Sample Data Ready (55+ Records)
- ✅ Security Features Implemented
- ✅ Production Ready

---

## 📅 Last Updated

**January 3, 2026**

---

## 🎉 Thank You!

Thanks for using the Online Voting System. Your feedback and contributions are welcome!
