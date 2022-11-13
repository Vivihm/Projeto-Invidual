var comentarioModel = require("../models/comentarioModel");

function testar(req, res) {
    console.log("ENTRAMOS NO comentarioController");
    res.send("ENTRAMOS NO COMENTARIO CONTROLLER");
}


function listar(req, res) {
    comentarioModel.listar().then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar os comentarios: ", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function publicar(req, res) {
    var comentario = req.body.comentario;
    var idUsuario = req.params.idUsuario;

    if (comentario == undefined) {
        res.status(400).send("O comentário está indefinido!");
    } else if (idUsuario == undefined) {
        res.status(403).send("O id do usuário está indefinido!");
    } else {
        comentarioModel.publicar(comentario, idUsuario)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            )
            .catch(
                function (erro) {
                    console.log(erro);
                    console.log("Houve um erro ao fazer o comentario: ", erro.sqlMessage);
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {

    listar,
    publicar,

}