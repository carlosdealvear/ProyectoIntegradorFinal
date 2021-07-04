const db = require("../database/models")
const bcryptjs = require('bcryptjs')
const session = require('express-session');
const op = db.Sequelize.Op

module.exports = {
    login: (req, res) => {
        return res.render("login")
        
    },
    ingresar : (req,res) =>{
        db.Usuario.findOne({
            where: [{ email : req.body.email}]
        })
        .then(usuario =>{
            console.log(usuario + '--------------')
            if(usuario == null){
                return res.send('Usuario o clave inválida')
            }else{
                if(bcryptjs.compareSync(req.body.password, usuario.password)){
                  
                    req.session.usuarioLogueado = usuario
                    
                    if (req.body.recordarme) {
                        res.cookie('userId',usuario.Id, {maxAge : 1000 * 60 *60*24 })
                    }
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
                img_name:req.file ? req.file .filename : "/images/users/foto-incognito.jpg" ,
                apellido : req.body.apellido,
                email : req.body.email,
                fecha_de_nacimiento: req.body.fecha_de_nacimiento,
                telefono: req.body.telefono,
                password : bcryptjs.hashSync(req.body.password, 10)
            })
            .then(()=>{
                return res.redirect('/');
                
            })     
            .catch(error => console.log(error));

    },
    logout: (req,res) =>{
        req.session.destroy();
        res.cookie('userId', '', {maxAge : -1 });
        return res.redirect('/');
    }
}