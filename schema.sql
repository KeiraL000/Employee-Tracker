DROP DATABASE IF EXISTS employeetracker_DB;

CREATE DATABASE employeetracker_DB;
USE employeetracker_DB;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (department_id) REFERENCES department(id)
);
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    manager_id INT,
    role_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);

INSERT INTO department (name)
VALUE ("Sales");
INSERT INTO department (name)
VALUE ("Engineering");
INSERT INTO department (name)
VALUE ("Finance");
INSERT INTO department (name)
VALUE ("Service");

INSERT INTO role (title, salary, department_id)
VALUE ("Lead Engineer", 180000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Service Team Lead", 130000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Accountant", 120000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Sales rep", 80000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Software Engineer", 230000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Service rep", 90000, 4);


INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Susan", "Hill", null, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jonathan", "Sum", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Andrea", "Lopez", null, 3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Tyler", "Garcia", 1, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Mia", "Mark", 4, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Ruby", "Not", 1, 6);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Will", "Park", 2, 7);

SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
