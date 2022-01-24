INSERT INTO department (name)
VALUES 
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');

INSERT INTO role (title, salary, department_id)
VALUES 
    ('Salesperson', 70,000),
    ('Sales Manager', 100,000),
    ('Software Engineer', 80,000),
    ('Lead Engineer', 100,000),
    ('Accountant', 80,000),
    ('Lead Accountant', 100,000),
    ('Lawyer', 90,000),
    ('Lead lawyer', 100,000);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
    ('John', 'Doe', 1, 2),
    ('Sara', 'Wallace', 2, NUll),
    ('Sean', 'Gill', 3, 4),
    ('Nick', 'Omar', 3, 4),
    ('Matt', 'Ma', 4, NULL),
    ('Mark', 'Hamil', 5, 6),
    ('Zack', 'Fox', 6, NULL),
    ('Haley', 'Williams', 7, 8),
    ('Morgan', 'Johnson', 8, NULL),