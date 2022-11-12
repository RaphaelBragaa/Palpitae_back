import express from 'express'
import { inserirPalpite,atualizarPalpite,verPalpite,deletarPalpite } from '../Controllers/teste-controller.js'
import dotenv from 'dotenv';
import cors from 'cors';

dotenv.config();

const server = express()
server.use(cors());
server.use(express.json());

server.post('/palpite',inserirPalpite)
server.put('/palpite',atualizarPalpite)
server.get('/userpalpite',verPalpite)
server.delete('/palpiteDeletar',deletarPalpite)

server.listen(4000,()=>{
    console.log("Server On !")
})