var express = require("express");
var router = express.Router();

var pesquisaController = require("../controllers/pesquisaController");

router.get("/ultimas/:idAquario", function (req, res) {
    pesquisaController.buscarUltimasMedidas(req, res);
});

router.get("/tempo-real/:idAquario", function (req, res) {
    pesquisaController.buscarMedidasEmTempoReal(req, res);
})

module.exports = router;