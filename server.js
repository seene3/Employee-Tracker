const mysql = require('mysql2');
const inquirer = require('inquirer');
const consoleTable = require('console.table');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3001,
    user: 'seene3',
    password: '1333',
    database: 'db'
})

connection.connect(function (err) {
    if (err) throw err;
    init();
})

const init = async () => {
    try {
        let answer = await inquirer.prompt({
            name: 'choice',
            type: 'list',
            message: 'What would you like to do?',
            choices: [
                'View Employees',
                'View Departments',
                'View Roles',
                'Add Employees',
                'Add Departments',
                'Add Roles',
                'Update Employee Role',
                'Exit'
            ]
        });
        switch (answer.choice) {
            case 'View Employees':
                employeeView();
                break

            case 'View Departments':
                departmentView();
                break

            case 'View Roles':
                roleView();
                break

            case 'Add Employees':
                employeeAdd();
                break

            case 'Add Departments':
                departmentAdd();
                break

            case 'Add Roles':
                roleAdd();
                break

            case 'Update Employee Role':
                employeeUpdate();
                break

            case 'Exit':
                connection.end();
                break
        };
    } catch (err) {
        console.log(err);
        init();
    };
}

init();