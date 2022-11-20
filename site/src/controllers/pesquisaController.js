var pesquisaModel = require("../models/pesquisaModel");

var sessoes = [];

function responder(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
    var resposta1 = req.body.resposta1Server;
    var resposta2 = req.body.resposta2Server;
    var resposta3 = req.body.resposta3Server;

    // Faça as validações dos valores
    if (resposta1 == undefined) {
        res.status(400).send("Seu resposta1 está undefined!");
    } else if (resposta2 == undefined) {
        res.status(400).send("Seu resposta2 está undefined!");
    } else if (resposta3 == undefined) {
        res.status(400).send("Sua resposta3 está undefined!");
    } else {
        
        // Passe os valores como parâmetro e vá para o arquivo pesquisaModel.js
        pesquisaModel.responder(resposta1, resposta2, resposta3)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao responder! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    responder
}