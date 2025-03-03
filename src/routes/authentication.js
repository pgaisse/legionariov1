const express = require('express');
const router = express.Router();
const passport = require('passport');
const { isLoggedIn, isAdmin, isNLoggedIn } = require('../lib/auth');
const {validateSignup} = require('../lib/validation'); // Importar validaciones
// SIGNUP
router.get('/signup', isAdmin, (req, res) => {
  console.log('esto es signup get');
  res.render('auth/signup');
});

router.post('/signup', passport.authenticate('local.signup', {
  successRedirect: '/',
  failureRedirect: '/signup',
  failureFlash: true

}));

// SINGIN
router.get('/signin',isNLoggedIn, (req, res) => {
  res.render('auth/signin');
});

router.post('/signin',isNLoggedIn, (req, res, next) => {
  passport.authenticate('local.signin', {
    successRedirect: '/',
    failureRedirect: '/signin',
    failureFlash: true
  })(req, res, next);
});

router.get('/logout',isLoggedIn ,(req, res) => {
  req.logout(function(err) {
    
  });
  res.redirect('/');
});

router.get('/profile', isLoggedIn, (req, res) => {
  res.render('profile');
});

module.exports = router;