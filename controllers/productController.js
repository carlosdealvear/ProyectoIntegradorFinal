const db = require("../database/models")
const bcryptjs = require('bcryptjs')
const session = require('express-session');
const op = db.Sequelize.Op


module.exports = {
   
    principal : (req,res) => { res.send('producto')},

    producto: (req, res) => {
        let idProducto = req.params.id
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
            //console.log(miProducto+"------")
            return res.render("producto", {miProducto, idProducto});
                        
        })
        .catch(error => console.log(error+"*****"))
    },

    add: (req, res) =>{
        let idUsuario = req.params.id
        db.Categoria.findAll()
        .then(categorias =>{
            return res.render('addProduct',{categorias, idUsuario});
        })

    },
    store: (req, res) =>{
        
        db.Producto.create({
            nombre : req.body.nombre,
            url : req.body.url,
            categoria_id : req.body.categoria,
            descripcion : req.body.descripcion,
            precio: req.body.precio,
            usuario_id: req.body.usuario_id,
        })
        .then(()=>{
            return res.redirect('/');
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
    borrar : (req,res) =>{
        let productoId = req.params.id;
        db.Producto.destroy({
            where: {
                id : productoId
            }
        })
        .then( () =>{
            return res.redirect('/')
        })

    },
    comentario : (req, res) => {
        let idProducto = req.params.id
        db.Comentario.create({
            texto_comentario : req.body.comentario,
            usuario_id : req.body.usuario,
            producto_id : req.body.producto,
            
        })
        .then(()=>{
           return res.redirect(req.get('referer'));
        })     
        .catch(error => console.log(error));
    }

}