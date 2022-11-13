var express = require("express");
var router = express.Router();

var comentarioController = require("../controllers/comentarioController");

router.get("/", function (req, res) {
    comentarioController.testar(req, res);
});

router.get("/listar", function (req, res) {
    comentarioController.listar(req, res);
});

router.post("/publicar/:idUsuario", function (req, res) {
    comentarioController.publicar(req, res);
});

module.exports = router;