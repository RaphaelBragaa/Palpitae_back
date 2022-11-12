import express from 'express';
import { Login } from '../Controllers/teste-controller.js';
import dotenv from 'dotenv';
import cors from 'cors';
dotenv.config();
var server = express();
server.use(cors());
server.use(express.json());
server.post('/v', Login);
server.listen(4000, function () {
    console.log("Server On !");
});
