const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const { validateSignup } = require('./validation'); // Importar validaciones
const { Strategy } = require('passport-local');
const pool = require('../database');
const helpers = require('./helpers');

passport.use('local.signin', new LocalStrategy({
  usernameField: 'user_username',
  passwordField: 'user_password',
  passReqToCallback: true
}, async (req, user_username, user_password, done) => {
  const query = `SELECT * FROM users WHERE user = "${user_username}"`;
  const rows = await pool.query(`SELECT * FROM users WHERE user = "${user_username}"`);
  if (rows.length > 0) {
    const user = rows[0];
    const validPassword = await helpers.matchPassword(user_password, user.password)

    if (validPassword) {

      const admin = await pool.query(`SELECT * FROM users WHERE user = "${user_username}" and type=1`);
      if (admin.length > 0) {



        req.user_role = 'worker';

      } else {

      }

      done(null, user, req.flash('success', 'Welcome admin ' + user.name));


    } else {
      done(null, false, req.flash('message', 'Incorrect Password'));
    }
  } else {
    return done(null, false, req.flash('message', 'The Username does not exists.'));
  }

}));



passport.use('local.signup', new LocalStrategy({
  usernameField: 'user',
  passwordField: 'password',
  passReqToCallback: true
}, async (req, user, password, done) => {
  

  const { email, type , nombre} = req.body;
  let newUser = {
    email,
    type,
    nombre,
    user,
    password
  };

  console.log(newUser);
  newUser.password = await helpers.encryptPassword(password);
  // Saving in the Database
  const result = await pool.query(`INSERT INTO users SET ? `,newUser);
  newUser.id = result.insertId;
  return done(null, newUser);
  }
));

passport.serializeUser((users, done) => {

  if (users.id) {
    done(null, users.id);
  }
  else {
    done(null, users.id);
  }
});

passport.deserializeUser(async (id, done) => {
  const rows = await pool.query(`SELECT * FROM users WHERE id = ${id}`);
  done(null, rows[0]);
});