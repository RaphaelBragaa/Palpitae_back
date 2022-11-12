
export type PalpiteEntity ={
    id:number,
    nome:string,
    partida:string,
    placar:string,
    acertou:boolean
}



export type Palpite = Omit<PalpiteEntity, "id">
