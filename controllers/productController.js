const db = require("../database/models")

module.exports = {
   
    principal : (req,res) => { res.send('producto')},

    producto: (req, res) => {
        let idProduct = req.params.id
        //return res.send(idProduct)
        console.log(idProduct+"-----")
        db.Producto.findByPk(req.params.id)
        .then(miProducto =>{
            //return res.send(miProducto)
            //console.log(miProducto+"------")
            return res.render("producto", {miProducto});
            //return res.render('producto',{producto})
        })
        .catch(error => console.log(error+"*****"))
    },

}