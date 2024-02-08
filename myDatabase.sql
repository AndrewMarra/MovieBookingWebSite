-- SQLBook: Code
-- Active: 1682117412209@@127.0.0.1@3306@mydatabase

SHOW DATABASES;

CREATE USER 'Guest1'@'localhost' IDENTIFIED BY 'GuestPassword1*1';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'Guest'@'localhost';


CREATE TABLE movies (
    title VARCHAR(255) NOT NULL  
);
CREATE TABLE users (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL
);

CREATE TABLE admin(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL
);

CREATE TABLE tickets(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  time VARCHAR(100) NOT NULL,
  theater VARCHAR(100) NOT NULL,
  seats VARCHAR(100) NOT NULL,
  code VARCHAR(100) NOT NULL 
);

SELECT * FROM tickets;

DROP TABLE tickets;

INSERT INTO admin (name, email, password) VALUES ('admin', 'admin@admin.com', 'password');

SELECT * FROM admin;

DROP TABLE admin;

DROP TABLE users;


SELECT * FROM users;

SELECT title FROM movies;
SELECT * FROM users WHERE email = 'john@example.com';