import Joi from 'joi';
var PartidaSchema = Joi.object({
    Partida: Joi.string().required(),
    Placar: Joi.string().required(),
    Data: Joi.string().required()
});
export { PartidaSchema };
