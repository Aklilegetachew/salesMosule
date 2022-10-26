const mysql = require("mysql2");


// const pool = mysql.createPool({
//   host: "localhost",
//   user: "root",
//   database: "sales",
//   password: "",
// });

const pool = mysql.createPool({
  host: "localhost",
  user: "versavvy_proPlast",
  database: "versavvy_sales",
  password: "J-OJ{&%hE9gv",
});

module.exports = pool.promise();
