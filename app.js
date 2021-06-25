var createError = require('http-errors');
var express = require('express'); //servidpr mas rapido
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const db = require("./database/models")

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var productRouter = require("./routes/product");

var app = express();            //variable app con info de express

// view engine setup
app.set('view engine', 'ejs');   //setear las vistas en la carpeta views y usamos el motor de templeate ejs

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

const session = require('express-session')
//activar el uso de las cookies
app.use(session({
  secret:'mensaje secreto',
  resave: false,
  saveUninitialized: true
}))

//aqui llamo a mi modelo usuario- user
const {user} = require ( './database/models')

//debo cerear una funcion middleware si el ususario pudo recordarse en la vista del login
/*app.use(function(req,res,next){
    if (req.session.user === undefined && req.cookies.userId != undefined ) {
      user.findByPk(req.cookies.userId)
      .then ( usuario =>{
        req.session.user = usuario
        next()
      })
      .catch(error => console.log(error))
    } else{
      next()
    }
})*/
app.use(function(req, res, next) {

  if (req.cookies.userId != undefined && req.session.usuarioLogueado === undefined) {

      db.Usuario.findByPk(req.cookies.userId)

      .then(user => {

          req.session.usuarioLogueado = user

          next()

      })

  } else {
      next()
  }
})

const { Console } = require('console');

 //creando la funcion de middleware
app.use(function(req,res,next){
  if (req.session.user !=undefined ) {
    res.locals.user = req.session.user;
  }
  next();
})

app.use(function(req, res, next) {

  if (req.session.usuarioLogueado != null) {
      res.locals = {
          usuarioLogueado: req.session.usuarioLogueado
      }

  } else {
      res.locals = {
          usuarioLogueado: null
      }
  }

  return next()
})



app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use("/producto", productRouter);


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
