import pkg from 'pg'
import dotenv from "dotenv";

dotenv.config();

const {Pool} = pkg



//const connection = new Pool({
  //  connectionString: process.env.DATABASE_URL,
  //});

  const user = 'postgres';
const password = '27081945';
const host = 'localhost';
const port = 5432;
const database = 'Palpitae';

const connection = new Pool({
  user,
  password,
  host,
  port,
  database
});

  export default connection