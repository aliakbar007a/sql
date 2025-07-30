DROP DATABASE IF EXISTS users;


CREATE DATABASE users;
USE users;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    balance INT
);


INSERT INTO users (name, balance) VALUES ('User1', 1000000);
INSERT INTO users (name, balance) VALUES ('User2', 0);


START TRANSACTION;

SELECT balance FROM users WHERE id = 1 FOR UPDATE;
UPDATE users SET balance = balance - 2 WHERE id = 1;
UPDATE users SET balance = balance + 2 WHERE id = 2;

COMMIT;