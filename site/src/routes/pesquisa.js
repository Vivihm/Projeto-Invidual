var express = require("express");
var router = express.Router();

var pesquisaController = require("../controllers/pesquisaController");


//Recebendo os dados do html e direcionando para a função responder de pesquisaController.js
router.post("/responder/:idUsuario", function (req, res) {
    pesquisaController.responder(req, res);
})


module.exports = router;