const express = require('express');
const router = express.Router();
const pool = require('../database');
const { body, matchedData, validationResult } = require('express-validator');
const helpers = require('../lib/helpers');
const { validateProduct, validateCarousel } = require('../lib/validation'); // Importar validaciones
const { isLoggedIn, isNLoggedIn, isAdmin } = require('../lib/auth');

require('dotenv').config();



const { GoogleGenerativeAI } = require("@google/generative-ai");




router.use(async (req, res, next) => {
    try {
        const results = await pool.query('SELECT * FROM carousel');
        res.locals.carouselImages = results;
        next();
    } catch (error) {
        console.error("Error loading carousel images:", error);
        res.locals.carouselImages = [];
        next();
    }
});

router.get('', async (req, res) => {
    try {
     //   const genAI = new GoogleGenerativeAI(process.env.API_KEY);
     //   const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });

     //   const prompt = "crea una seccion que able acerca de la tecnología en la agricultura, como está cambiando y mejorandola, cuales son los beneficios y ventajas. se breve y entrega en ingles y entrega el texto de manera formal y sin hablar de mas, no añadas ninguna letra o simbolo que no corresponda";

     //   const result = await model.generateContent(prompt);
     //   const content = result.response.text();
     console.log("ESTO ES INDEX")
        const results= await pool.query("select * from content");
        console.log(results);
        res.render('index', { data: results });
        

    }
    catch (error) {
        console.log(error)
        res.status(404).send('<h1>Página no encontrada</h1>');
    }

});
router.get('/about', async (req, res) => {
    try {
        res.render('about');

    }
    catch (error) {
        res.render('index');
    }

});

router.get('/contact', async (req, res) => {
    try {
        res.render('contact');

    }
    catch (error) {
        res.render('index');
    }

});

router.get('/products', async (req, res) => {
    if (req.query.id) {
        await pool.query(`delete from products where id_product=${req.query.id}`)
    }

    const sql = "SELECT * FROM products";

    try {

        const results = await pool.query(sql);

        res.render('products', { data: results });

    }
    catch (error) {
        console.log(error);
        res.render('index');
    }

});

router.post('/products', validateProduct, async (req, res) => {

    try {

        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            req.flash('message', errors.array().map(error => error.msg));
            res.redirect('/products');
        }
        else {
            const imageName = await helpers.resizeImage(req.file);
            console.log("ESTE ES EL NOMBRE DE LA IMAGEN: ", imageName);
            const query = `CALL InsertProduct('${req.body.name}', '${req.body.text}', ${req.body.price}, '${imageName}');`;
            console.log(query);
            await pool.query(query);
            req.flash('success', 'producto agregado satisfactoriamente');
            res.redirect('/products');
        }


    }
    catch (error) {
        console.log(error);
        res.render('index');
    }

});






// Seccion para agregar contenido de algunas seccions
router.get('/add_carousel', isAdmin, async (req, res) => {
    try {
        res.render('edit/add_carousel');

    }
    catch (error) {
        res.render('index');
    }

});

// Seccion para agregar contenido de algunas seccions
router.post('/add_carousel', validateCarousel, isAdmin, async (req, res) => {
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            req.flash('message', errors.array().map(error => error.msg));
            res.redirect('/add_carousel');

        }
        else {
            const { title, text} = req.body;
            picture = await helpers.resizeImageCarousel(req.file);
            console.log(picture)
            let newCarousel = {
                title,
                text,
                picture
            };
           await pool.query(`INSERT INTO carousel SET ? `, newCarousel)
        req.flash('success', "Datos agregados correctamente");
        res.redirect('/add_carousel');
        }
        
    }
    catch (error) {
        req.flash('message' , "La dimención de la imagen puede que no sea la adecuada min(1500x1000)");
        res.redirect('/add_carousel');
}

});

router.post('/add_content', isAdmin, async (req, res) => {
    const {title, content, type}=req.body;
    try {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            req.flash('message', errors.array().map(error => error.msg));
            res.redirect('/');
        }
        else {
            const imageName = await helpers.resizeImage(req.file);
            console.log("ESTE ES EL NOMBRE DE LA IMAGEN: ", imageName);
            const query = `CALL InsertContent('${title}', '${content}', ${type}, '${imageName}');`;
            console.log(query);
            await pool.query(query);
            req.flash('success', 'Contenido agregado satisfactoriamente');
            res.redirect('/');
        }


    }
    catch (error) {
        console.log(error);
        res.render('index');
    }
});



module.exports = router;
