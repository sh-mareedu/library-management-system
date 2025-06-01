# 📚 Library Management System – SQL Project
This project implements a Library Management System using SQL, focusing on core database design, data manipulation, and query operations.
It includes schema creation, sample data insertion, and a set of useful queries for managing a simple library's borrowing system.

## ✅ Key Features
Database Name: library_management_db

## 🗃️ Tables Created
- Books – Stores book information such as title, author, and available copies.
- Members – Stores library member details and join dates.
- Borrow – Records book borrow activity including borrow and return dates, with foreign keys linking to Books and Members.

## 🧩 Sample Data
_Pre-populated with:_

- 3 books
- 3 members
- 4 borrow records (some returned, some not)

## 🔍 Useful Queries
- Books Borrowed Count – Lists each book and the number of times it has been borrowed.
- Active Borrowers – Identifies members who borrowed more than one book.
- Currently Borrowed Books – Shows books that are currently issued (not returned).
- Available Books – Lists books with available copies (i.e., copies > 0).

## 📂Use Case
_Ideal for learning and demonstrating:_

- SQL schema design
- Foreign key relationships
- Basic reporting through SELECT queries

## 📚 Educational Value
This project simulates practical database operations in a real-world library environment, making it ideal for hands-on learning and classroom use.

## 🚀Future Enhancements
- Track book reservations
- Add late return fees logic
- Implement user authentication (for a full-stack version)
- Create stored procedures and triggers

## 🧾Conclusion
This Library Management System SQL Project serves as a foundational implementation of database design and operations for a real-world scenario. By defining clear table relationships, inserting sample data, and executing practical queries, the project demonstrates key concepts in relational database management. It’s an excellent starting point for students, developers, or professionals looking to strengthen their SQL skills or extend the system into a full-stack application in the future.

With scalability in mind, this system can be easily enhanced to support advanced features like book reservations, fine tracking, automation with stored procedures, or integration with web and mobile platforms.
