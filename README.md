
# POC PALPITAE !


Api de palpites para jogos de futebol.




## Documentação da API

#### Retorna palpites do usuário

```http
  GET /userpalpite
```

| Request   | Tipo       | JSON                    |
| :---------- | :--------- | :---------------------------------- |
| `body` | `string` | "name":"nome_do_usuário" |

#### Inserir Palpite

```http
  POST /palpite
```

| Request   | Tipo       | JSON                                   |
| :---------- | :--------- | :------------------------------------------ |
| body      | `string` | "name":"nome_do_usuário",| 
|| | "partida":"Brasil x México", |
| |  | "placar":"0/2" |

#### Alterar Palpite

```http
  PUT /palpite
```

| Request   | Tipo       | JSON                                   |
| :---------- | :--------- | :------------------------------------------ |
| body      | `string` | "name":"nome_do_usuário",| 
|| | "partida":"Brasil x México", |
| |  | "placar":"1/5" |

#### Deletar Palpite

```http
  DELETE /palpiteDeletar
```

| Request   | Tipo       | JSON                                   |
| :---------- | :--------- | :------------------------------------------ |
| body      | `string` | "name":"nome_do_usuário",| 
|| | "partida":"Brasil x México", |
| |  | "placar":"1/5" |





