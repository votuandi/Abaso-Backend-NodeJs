var mysql = require('mysql');

var con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    database: "learn_nodejs"
});

con.connect(function (err) {
    if (err) {
        console.log(err);
        return
    };
    console.log("Connected!");
});