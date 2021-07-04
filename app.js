var createError = require('http-errors');
var express = require('express'); 
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const db = require("./database/models")

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var productRouter = require("./routes/product");

var app = express();            


app.set('view engine', 'ejs');  

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

const session = require('express-session')

app.use(session({
  secret:'mensaje secreto',
  resave: false,
  saveUninitialized: true
}))


const {user} = require ( './database/models')


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



app.use(function(req, res, next) {
  next(createError(404));
});


app.use(function(err, req, res, next) {
  
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
