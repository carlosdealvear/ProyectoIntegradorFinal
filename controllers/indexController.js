const db = require("../database/models")
const bcryptjs = require('bcryptjs')
const session = require('express-session');

const op = db.Sequelize.Op

module.exports = {

    principal: (req, res) => {
        db.Producto.findAll({
            limit : 8,
            order : [
                ["created_at", "DESC"],
            ],
        })
        .then(productos =>{
            return res.render("index", {productos});
            
        })

    },

    /*login: (req, res) => {
        res.render("login")
    },
    ingresar : (req,res) =>{
        db.Usuario.findOne({
            where: [{ email : req.body.email}]
        })
        .then(usuario =>{
            console.log(usuario)
            if(usuario == null){
                return res.send('Usuario o clave inválida')
            }else{
                if(bcryptjs.compareSync(req.body.password, usuario.password)){
                    return res.redirect('/')
                    
                }else{
                    return res.send('Usuario o clave inválida');
                }
            }
        })

    },

    register: (req, res) => {

        return res.render("register")
    },
    
    store: (req, res) => {

            db.Usuario.create({
                nombre : req.body.nombre,
                apellido : req.body.apellido,
                email : req.body.email,
                fecha_de_nacimiento: req.body.fecha_de_nacimiento,
                telefono: req.body.telefono,
                password : bcryptjs.hashSync(req.body.password, 10)
            })
            .then(()=>{
                return res.redirect('/');
            })     
            .catch(error => res.render('error',{error}))
        },

        */
    

    perfil: (req, res) => {

        db.Usuario.findByPk(req.params.id,{
            include: [
                //{association: "categorias"},
                {association: "productos"},
                //{association: "comentarios"}
                ]                
        })
        .then(usuario =>{
            //return res.send(miProducto)
            //console.log(miProducto+"------")
            return res.render("perfil", {usuario});
            //return res.send(usuario)
            //return res.render('producto',{producto})
        })
        .catch(error => console.log(error+"*****"))
    },

    editar: (req, res) => {
        let idUsuario = req.params.id
        db.Usuario.findByPk(idUsuario)
        .then(usuario => {
            return res.render("perfilEditar", {usuario})   
        })
         
        

    },
    edit: (req, res) =>{
        db.Usuario.update({
            nombre : req.body.nombre,
            apellido : req.body.apellido,
            email : req.body.email,
            fecha_de_nacimiento: req.body.fecha_de_nacimiento,
            telefono: req.body.telefono,
            password : bcryptjs.hashSync(req.body.password, 10)
        },
        {
            where: {
                id : req.body.idUsuario,
            }
            
        })
        .then(()=>{
            return res.redirect('/');
        })    
        

    },
    

    
    
}