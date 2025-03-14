const express = require('express');
const path = require('path');
const exphbs = require('express-handlebars');
const flash = require('connect-flash');
const session = require('express-session');
const passport = require('passport');
const MySQLStore = require('express-mysql-session')(session);
const { database } = require('./backup/keys');
const bodyParser = require('body-parser');
const uuid = require('uuid');
const multer = require('multer');
require('dotenv').config();
const unicid = uuid.v4();
const storage = multer.memoryStorage();

// Intializations
const app = express();
require('./lib/passport');

// Settings
app.set('port', process.env.PORT || 3800);
app.set('views', path.join(__dirname, 'views'));

console.log(path.join(__dirname, 'public/js'));

app.engine('hbs', exphbs.engine({
  defaultLayout: 'main',
  layoutsDir: path.join(app.get('views'), 'layouts'),
  partialsDir: path.join(app.get('views'), 'partials'),
  extname: '.hbs',
  helpers: {
        ifCond: function (v1, v2, options) {
      console.log('1:' + v1);
      console.log('2:' + v2);
      if (v1 === v2) {
        return options.fn(this);
      }
      return options.inverse(this);

    },
    sum: function (value) {
      return value + 1;
    }
    
  },

}))

app.set('view engine', '.hbs');



// Middlewares
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(session({
    secret: 'faztmysqlnodemysql',
    resave: false,
    saveUninitialized: false,
    store: new MySQLStore(database)
  }));
app.use(flash());
app.use(passport.initialize());
app.use(passport.session());
app.use(multer({
  storage,
  limits: { fileSize: 50000000 },
  fileFilter: (req, file, cb) => {
    const filetypes = /jpeg|png|jpg|webp|mp4|mov|avi/
    const minetype = filetypes.test(file.mimetype);
    const extname = filetypes.test(path.extname(file.originalname))
    if (minetype && extname) {
      return cb(null, true);
    }
    cb("error: el archivo debe ser una extensión válida");
  }


}).single('picture'));

// Global variables
app.use((req, res, next) => {
  app.locals.message = req.flash('message');
  app.locals.success = req.flash('success');
  app.locals.user = req.user;
  next();
});

// Routes
app.use(require('./routes/index'));
app.use(require('./routes/authentication'));

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