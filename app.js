var createError = require('http-errors');
var express = require('express'); //servidpr mas rapido
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

app.use(session({
  secret:'mensaje secreto',
  resave: false,
  saveUninitialized: true
}))
//activar el uso de las cookies

app.use(cookieParser)

//debo cerear una funcion middleware si el ususario pudo recordarse en la vista del login
app.use(function(req,res,next){
    if (req.session.user === undefined && req.cookies.userId != undefined ) {
      
    }
})


 //creando la funcion de middleware
app.use(function(req,res,next){
  Console.log(req.session.user + '----------------- ')
  if (req.session.user !=undefined ) {
    res.locals.user = req.session.user;
  }
  next();
})
 

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var productRouter = require("./routes/product");
const { Console } = require('console');
var app = express();            //variable app con info de express

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');                      //setear las vistas en la carpeta views y usamos el motor de templeate ejs

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

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
