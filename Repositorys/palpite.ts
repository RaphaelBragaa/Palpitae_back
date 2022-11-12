import db from '../database/database.js'
import { Palpite} from '../protocols/palpite.js'
import { QueryResult } from 'pg'




async function insertPalpite(palpite:Palpite):Promise<QueryResult>{
    return db.query(`INSERT INTO "palpitae" ("nome", "partida","placar" ) VALUES ($1,$2,$3)`,[palpite.nome, palpite.partida,palpite.placar])
}

async function updatePalpite(palpite:Palpite):Promise<QueryResult>{
 return db.query(`UPDATE "palpitae" SET placar=$1 WHERE nome = $2 AND partida = $3`,[
    palpite.placar,
    palpite.nome,
    palpite.partida
    ])
}

async function selectPalpite(nome:string):Promise<QueryResult>{
    return db.query(`SELECT * FROM "palpitae" WHERE nome = $1`,[nome])
}

async function deletePalpite(palpite:Palpite):Promise<QueryResult>{
    return db.query(`DELETE FROM "palpitae" WHERE nome = $1 AND partida = $2`,[
        palpite.nome,
        palpite.partida])
}

export {
    insertPalpite,
    updatePalpite,
    selectPalpite,
    deletePalpite
}