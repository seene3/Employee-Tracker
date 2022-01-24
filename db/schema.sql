DROP DATABASE IF EXISTS db;
CREATE DATABASE db;

USE db;

CREATE TABLE department (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
)

CREATE TABLE role (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    titles VARCHAR(30),
    salary DECIMAL,
    department_id INTEGER
)

create table employee (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INTEGER,
    manager_id INTEGER
)


 