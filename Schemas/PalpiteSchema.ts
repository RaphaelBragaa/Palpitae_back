import Joi from 'joi'

const PartidaSchema = Joi.object({
    Partida:Joi.string().required(),
    Placar:Joi.string().required(),
    Data:Joi.string().required(),
})

export {
    PartidaSchema
}