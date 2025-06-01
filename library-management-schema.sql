create database library_management_db;
use library_management_db;
-- 1. Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    available_copies INT
);

-- 2. Create Members table
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    join_date DATE
);

-- 3. Create Borrow table
CREATE TABLE Borrow (
    borrow_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- 4. Insert sample books
INSERT INTO Books VALUES (1, 'The Alchemist', 'Paulo Coelho', 5);
INSERT INTO Books VALUES (2, 'Wings of Fire', 'A.P.J. Abdul Kalam', 3);
INSERT INTO Books VALUES (3, 'Atomic Habits', 'James Clear', 2);

-- 5. Insert sample members
INSERT INTO Members VALUES (101, 'Amit', '2024-01-15');
INSERT INTO Members VALUES (102, 'Sneha', '2024-03-10');
INSERT INTO Members VALUES (103, 'Rahul', '2024-05-01');

-- 6. Insert borrow records
INSERT INTO Borrow VALUES (201, 101, 1, '2024-05-10', NULL);
INSERT INTO Borrow VALUES (202, 102, 2, '2024-05-11', NULL);
INSERT INTO Borrow VALUES (203, 101, 3, '2024-05-12', '2024-05-20');
INSERT INTO Borrow VALUES (204, 103, 1, '2024-05-13', NULL);

-- 7. List all books with number of times borrowed
SELECT b.title, COUNT(br.borrow_id) AS times_borrowed
FROM Books b
LEFT JOIN Borrow br ON b.book_id = br.book_id
GROUP BY b.title;

-- 8. Find members who borrowed more than 1 book
SELECT m.name, COUNT(br.book_id) AS books_borrowed
FROM Members m
JOIN Borrow br ON m.member_id = br.member_id
GROUP BY m.name
HAVING COUNT(br.book_id) > 1;

-- 9. List all currently borrowed books (not returned yet)
SELECT m.name, b.title, br.borrow_date
FROM Borrow br
JOIN Members m ON br.member_id = m.member_id
JOIN Books b ON br.book_id = b.book_id
WHERE br.return_date IS NULL;

-- 10. Show available books (copies > 0)
SELECT title, available_copies
FROM Books
WHERE available_copies > 0;
