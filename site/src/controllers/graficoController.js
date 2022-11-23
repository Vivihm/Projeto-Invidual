var graficoModel = require("../models/graficoModel");

function buscarUltimosCategoria(req, res) {

    var idResposta = req.params.idResposta;

    graficoModel.buscarUltimosCategoria(idResposta).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function buscarUltimosTecnica(req, res) {


    graficoModel.buscarUltimosTecnica().then(function (resultado) {
        if (resultado.length > 0) {
            console.log('Buscar ultimos técnicaController')
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function buscarUltimosObjetivo(req, res) {


    graficoModel.buscarUltimosObjetivo().then(function (resultado) {
        if (resultado.length > 0) {
            console.log('Buscar ultimos técnicaController')
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    buscarUltimosCategoria,
    buscarUltimosTecnica,
    buscarUltimosObjetivo
}