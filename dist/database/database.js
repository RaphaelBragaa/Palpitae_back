import pkg from 'pg';
import dotenv from "dotenv";
dotenv.config();
var Pool = pkg.Pool;
//const connection = new Pool({
//  connectionString: process.env.DATABASE_URL,
//});
var user = 'postgres';
var password = '27081945';
var host = 'localhost';
var port = 5432;
var database = 'palpite';
var connection = new Pool({
    user: user,
    password: password,
    host: host,
    port: port,
    database: database
});
export default connection;
