module.exports = {
    isLoggedIn (req, res, next) {
        if (req.isAuthenticated()) {
            return next();
        }
        return res.redirect('/signin');
    },
    isNLoggedIn (req, res, next) {
        if (!req.isAuthenticated()) {
            return next();
        }
        return res.redirect('/');
    },
    isAdmin(req, res, next){

        if (req.isAuthenticated() && req.user.type=='1') {
            return next();
        }
        return res.redirect('/');
    }

    

};