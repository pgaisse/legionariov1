const express = require('express');
const path = require('path');
const exphbs = require('express-handlebars');
const flash = require('connect-flash');
const session = require('express-session');
const passport = require('passport');
const MySQLStore = require('express-mysql-session')(session);
const { database } = require('./backup/keys');

// Intializations
const app = express();

// Settings
app.set('port', process.env.PORT || 3389);
app.set('views', path.join(__dirname, 'views'));

console.log(path.join(__dirname, 'public/js'));

app.engine('hbs', exphbs.engine({
  defaultLayout: 'main',
  layoutsDir: path.join(app.get('views'), 'layouts'),
  partialsDir: path.join(app.get('views'), 'partials'),
  extname: '.hbs',
  helpers: {},

}))

app.set('view engine', '.hbs');



// Middlewares
app.use(session({
    secret: 'faztmysqlnodemysql',
    resave: false,
    saveUninitialized: false,
    store: new MySQLStore(database)
  }));
  app.use(flash());


app.use(flash());
// Global variables
app.use((req, res, next) => {
  app.locals.message = req.flash('message');
  app.locals.success = req.flash('success');
  app.locals.user = req.user;
  next();
});

// Routes
app.use(require('./routes/index'));

// Public
app.use(express.static(path.join(__dirname, 'public')));
// Starting
try {
  app.listen(app.get('port'), () => {
    console.log('Server is in port', app.get('port'));
  });

}
catch (error) {
  app.listen(app.get('port'), () => {
    console.log('Server is in port', app.get('port'));
  });

}