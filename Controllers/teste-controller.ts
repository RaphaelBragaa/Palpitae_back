import * as PalpiteRepo from '../Repositorys/palpite.js'
import {Request,Response} from 'express'
import * as PalpiteSchema from '../Schemas/PalpiteSchema.js'
import {Palpite} from '../protocols/palpite.js'



async function inserirPalpite(req:Request,res:Response){
    const palpite=req.body as Palpite 
    console.log(palpite)
    try{
        await PalpiteRepo.insertPalpite(palpite)
        res.send(200)

    }catch(error){
        console.log(error)
        return res.sendStatus(500)
    }

}

async function atualizarPalpite(req:Request,res:Response){
    const palpite=req.body as Palpite 
    try{
        await PalpiteRepo.updatePalpite(palpite)
        res.send(200)
    }catch(error){
        console.log(error)
        return res.sendStatus(500)
    }
}

async function verPalpite(req:Request,res:Response){
    const {nome} = req.body
    try{
        const palpites = await PalpiteRepo.selectPalpite(nome)
        if(palpites.rowCount === 0){
            return res.sendStatus(404)
        }
        res.send(palpites.rows)
    }catch(error){
        console.log(error)
        return res.sendStatus(500)
    }
}

async function deletarPalpite(req:Request,res:Response){
    const palpite=req.body as Palpite
    try{
        await PalpiteRepo.deletePalpite(palpite)
        res.send(200)
    }catch(error){
        console.log(error)
        return res.sendStatus(500)
    }
}

// async function Login(req:Request,res:Response){
//    const name = req.body as user 
//     try{
//      await PalpiteRepo.insertUser(name)
//          res.sendStatus(200)
//     }catch(error){
//         console.log(error)
//        return res.status(401).send('Nome já utilizado.')
//     }   
// }

// async function InserirPartida(req:Request,res:Response){
//     const game = req.body as partidas
//     console.log(game.Partida + ' GAME')
//     const {error} = PalpiteSchema.PartidaSchema.validate(game)
//     if(error){
//         res.status(400).send({
//             message:error.message
//         })
//     }
//     try{
//         await PalpiteRepo.insertPartida(game)
//         res.sendStatus(200)
//     }catch(error){
//         console.log(error)
//         return res.status(500)
//     }
// }

// async function InserirPalpite(req:Request,res:Response){
//     const name = req.query.name
//     const palpite = req.body as palpite

//     try{
//         const searchUser= await PalpiteRepo.selectUser(name)
//         if(searchUser.rowCount === 0){
//             return res.status(404).send('')
//         }
//         const user = searchUser.rows

//         const InserirPalpite = await PalpiteRepo.insertPalpite({user,palpite})
//     }catch(error){

//     }
    

// }



export {
   inserirPalpite,
   atualizarPalpite,
   verPalpite,
   deletarPalpite
}