import mysql from 'mysql'

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    database: 'learn_nodejs',
    multipleStatements: true
});

module.exports = con