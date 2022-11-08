const mysql = require("mysql2");

const config =  require('../config');
// const pool = mysql.createPool({
//   host: "localhost",
//   user: "root",
//   database: "sales",
//   password: "",
// });

//const pool = mysql.createPool({
  //host: "localhost",
  //user: "versavvy_proPlast",
  //database: "versavvy_sales",
 // password: "J-OJ{&%hE9gv",
//});


const pool = mysql.createPool({
  host: "localhost",
  user: config.DBUSER,
  database: config.DBNAME,
  password: config.DBPASSWORD,
});



module.exports = pool.promise();
