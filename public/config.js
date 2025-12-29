// database config.js
const mysql = require('mysql2');

const pool = mysql.createPool({
  host: 'localhost',
  user: 'nodeuser',
  password: 'nodepass',
  database: 'myfirstdatabase',
  port: 3306,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

module.exports.config = pool;
