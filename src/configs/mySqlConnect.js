import mysql from 'mysql'

const con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    database: 'abaso_database',
    multipleStatements: true
});

module.exports = con