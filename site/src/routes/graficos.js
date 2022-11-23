var express = require("express");
var router = express.Router();

var graficoController = require("../controllers/graficoController");

router.get("/ultimosCategoria", function (req, res) {
    graficoController.buscarUltimosCategoria(req, res);
});

router.get("/ultimosTecnica", function (req, res) {
    graficoController.buscarUltimosTecnica(req, res);
});

router.get("/ultimosObjetivo", function (req, res) {
    graficoController.buscarUltimosObjetivo(req, res);
});

module.exports = router;