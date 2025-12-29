#!/bin/bash
# Run MySQL commands as root using sudo
sudo mysql <<EOF
CREATE USER IF NOT EXISTS 'nodeuser'@'localhost'
IDENTIFIED WITH caching_sha2_password
BY 'nodepass';

GRANT ALL PRIVILEGES ON myfirstdatabase.* TO 'nodeuser'@'localhost';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS myfirstdatabase;
USE myfirstdatabase;

CREATE TABLE IF NOT EXISTS Users (
    ID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(255),
    Age INT,
    City VARCHAR(255),
    PRIMARY KEY (ID)
);
EOF

echo "Database and table created successfully."

