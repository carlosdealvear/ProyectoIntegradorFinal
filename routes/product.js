var express = require('express');
var router = express.Router();
const productController = require("../controllers/productController")

/* GET home page. */
router.get("/", productController.principal)
router.get('/id/:id', productController.producto) 


module.exports = router;