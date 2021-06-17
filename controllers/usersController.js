const db = require("../database/models")
const bcryptjs = require('bcryptjs')
const session = require('express-session');
const op = db.Sequelize.Op

module.exports = {
    login: (req, res) => {
        return res.render("login")
        /*if(req.session.Usuario === undefined){
            return res.redirect('/login');
        }else{
            return res.redirect('/');
        }*/
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
            .catch(error => console.log(error));
        //else{
            //return res.render('error', {error});
        //}

    },
}
