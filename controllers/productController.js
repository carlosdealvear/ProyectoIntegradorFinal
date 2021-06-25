const db = require("../database/models")
const bcryptjs = require('bcryptjs')
const session = require('express-session');
const op = db.Sequelize.Op


module.exports = {
   
    principal : (req,res) => { res.send('producto')},

    producto: (req, res) => {
        //let idProduct = req.params.id
        //return res.send(idProduct)
        db.Producto.findByPk(req.params.id,{
            include: [
                {association: "categorias"},
                {association: "usuarios"},
                {association: "comentarios", include:{association: "usuarios"}

                }
                ]  
                  
        })
        
        .then(miProducto =>{
            //db.Usuario.findByPk(miProducto.comentarios.usuario_id).then(usuarios =>{
            //    return res.render("producto", {usuarios})}) 
            //return res.send(miProducto)
            //console.log(miProducto+"------")
            return res.render("producto", {miProducto});
            
            //return res.render('producto',{producto})
            
        })
        .catch(error => console.log(error+"*****"))
    },

    add: (req, res) =>{

        db.Categoria.findAll()
        .then(categorias =>{
            return res.render('addProduct',{categorias});
        })

    },
    store: (req, res) =>{

        db.Producto.create({
            nombre : req.body.nombre,
            url : req.body.url,
            categoria_id : req.body.categoria,
            descripcion : req.body.descripcion,
            precio: req.body.precio,
        })
        .then(()=>{
            return res.redirect('/perfil');
        })     
        .catch(error => console.log(error));

    },
    editar: (req, res) =>{
        let idProducto = req.params.id
        res.render('editProduct', {idProducto})
        console.log(idProducto)

    },
    edit: (req, res) =>{
        db.Producto.update({
            nombre : req.body.nombre,
            url : req.body.url,
            descripcion : req.body.descripcion,
            precio : req.body.precio,
        },
        {
            where: {
                id : req.body.idProducto,
            }
            
        })
        .then(()=>{
            return res.redirect('/');
        })    
        

    },

}