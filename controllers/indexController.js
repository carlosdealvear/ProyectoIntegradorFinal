const productos = require("../data/productos")

module.exports = {

    principal: (req, res) => {
        
        return res.render("index", productos )

    },

    login: (req, res) => {

        return res.render("login")
    },

    register: (req, res) => {

        return res.render("register")
    },
    
    perfil: (req, res) => {

        return res.render("perfil", productos)
    },

    editar: (req, res) => {

        return res.render("perfilEditar")

    },
    add: (req, res) =>{

        res.render("addProduct")

    } 

    
    
}