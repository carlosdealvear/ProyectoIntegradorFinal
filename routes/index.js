var express = require('express');
var router = express.Router();
const indexController = require("../controllers/indexController")

/* GET home page. */
router.get('/', indexController.principal) 

router.get("/login", indexController.login)

router.get("/register", indexController.register)

router.get("/perfil", indexController.perfil)

router.get("/perfil/editar", indexController.editar)

router.get('/add', indexController.add) 

module.exports = router;
