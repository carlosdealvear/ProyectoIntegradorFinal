var express = require('express');
var router = express.Router();
const productController = require("../controllers/productController")

/* GET homee page. */
router.get("/", productController.principal)

router.get('/id/:id', productController.producto) 

router.get('/add', productController.add)

router.get("/editar/:id", productController.editar)

router.post("/edit", productController.edit)

router.post("/store", productController.store)


module.exports = router;