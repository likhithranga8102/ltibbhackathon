-- Create database and use it
CREATE DATABASE customers;
USE customers;

-- Donors table
CREATE TABLE donors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(255) NOT NULL,
    lname VARCHAR(255) NOT NULL,
    mobileno BIGINT UNIQUE,
    city VARCHAR(255) NOT NULL,
    bfrom DATE,
    bto DATE,
    dob DATE,
    bloodgroup VARCHAR(255) NOT NULL
);

-- Insert donors data
INSERT INTO donors (fname, lname, mobileno, city, bfrom, bto, dob, bloodgroup) VALUES
('Srikanth', 'Koraveni', 9000736060, 'Pune', '2022-09-28', '2022-12-28', '1998-05-22', 'O_Positive'),
('Prashanth', 'Katkam', 7989919097, 'Mumbai', '2022-09-17', '2022-11-18', '1998-09-30', 'O_Positive'),
('Kranthi', 'Khaitha', 9876789871, 'Bangalore', '2022-09-16', '2022-11-08', '1996-07-02', 'B_Positive'),
('Srinivas', 'Thota', 9812789411, 'Mumbai', '2022-09-18', '2022-10-31', '1992-07-22', 'O_Positive'),
('Pandya', 'Loka', 9877787887, 'Mumbai', '2022-09-18', '2022-10-09', '1992-07-22', 'B_Positive'),
('Prajodh', 'Shreya', 9812444411, 'Mumbai', '2022-08-23', '2022-10-31', '1992-07-22', 'B_Positive'),
('Srinivas', 'Thota', 9812723411, 'Mumbai', '2022-04-19', '2022-10-07', '1992-07-22', 'B_Positive'),
('Zaheer', 'Khan', 7788678987, 'Chennai', '2022-09-11', '2022-12-19', '1998-11-11', 'A_Positive');

-- Users table
CREATE TABLE users (
    username VARCHAR(80) NOT NULL,
    name VARCHAR(80) NOT NULL,
    password VARCHAR(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert users data
INSERT INTO users (username, name, password) VALUES
('yssyogesh', 'Yogesh Singh', '12345'),
('bsonarika', 'Sonarika Bhadoria', '12345'),
('vishal', 'Vishal Sahu', '12345'),
('prashanth', 'Prashanth Katkam', '12345'),
('vijay', 'Vijay mourya', '12345');

INSERT INTO users (username, name, password) VALUES
('prashanth', 'Prashanth Katkam', '12345');

-- Admin table
CREATE TABLE admin (
    username VARCHAR(80) NOT NULL,
    name VARCHAR(80) NOT NULL,
    password VARCHAR(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert admin data
INSERT INTO admin (username, name, password) VALUES
('admin', 'admin', '12345');

-- Grant privileges
GRANT ALL PRIVILEGES ON customers.* TO 'root'@'%' IDENTIFIED BY 'admin123';
FLUSH PRIVILEGES;
