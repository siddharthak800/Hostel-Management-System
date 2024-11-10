# Hostel Management System 🏠

A comprehensive web-based hostel management solution that handles student billing, employee payroll, and mess management.

## Features ✨

- **Student Management**
  - Hostel fee tracking and management
  - Monthly mess bill generation
  - Student details and room allocation
  
- **Employee Management**
  - Staff salary processing
  - Attendance tracking
  - Role-based access control

- **Billing System**
  - Automated monthly bill generation
  - Payment tracking
  - Receipt generation
  - Outstanding dues management

## Technologies Used 🛠️

- HTML
- CSS
- PHP
- MySQL (XAMPP)

## Prerequisites 📋

- XAMPP (Version 8.0 or higher)
- PHP 
- Web Browser (Chrome/Firefox/Safari)
- Code Editor (VS Code recommended)

## Installation Steps 🚀

1. Clone this repository to your XAMPP's htdocs folder:
   https://github.com/siddharthak800/Hostel-Management-System.git
2. Start XAMPP Control Panel and enable:
   - Apache Server
   - MySQL Database

3. Import the database:
   - Open phpMyAdmin (http://localhost/phpmyadmin)
   - Create a new database named 'hostel_db'
   - Import the `kitshms.sql` file (for example, or your own)
     
4. Access the system:
   - Open your browser
   - Navigate to: `http://localhost/KITS HMS/KITS HMS`

## System Screenshots 📸

### Dashboard

![homepage](https://github.com/user-attachments/assets/bfb76928-4c03-4774-bd99-7e36063efcd5)

### Student Management
![Student Management](https://github.com/user-attachments/assets/7d511d16-8d8a-4e95-9bb5-1424b3a64221)


### Database Interface
![Billing System](https://github.com/user-attachments/assets/6ef3eb1f-30ed-4519-adff-08a66adb6fb0)


## User Roles and Access Levels 👥

1. **Admin**
   - Full system access
   - User management
   - Financial reports

2. **Warden**
   - Student management
   - Room allocation
   - Disciplinary records

3. **Accountant**
   - Fee collection
   - Salary processing
   - Financial records

## Security Features 🔒

- Password hashing
- Session management
- SQL injection prevention


## Version History 📝

- v1.0.0 (Current)
  - Initial Release
  - Basic functionality implemented
