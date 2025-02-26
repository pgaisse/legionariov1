const express = require('express');
const router = express.Router();
require('dotenv').config();

const { GoogleGenerativeAI } = require("@google/generative-ai");





router.get('/', async (req, res) => {
    try {
        const genAI = new GoogleGenerativeAI(process.env.API_KEY);
        const model = genAI.getGenerativeModel({ model: "gemini-1.5-flash" });

        const prompt = "crea una seccion que able acerca de la tecnología en la agricultura, como está cambiando y mejorandola, cuales son los beneficios y ventajas. se breve y entrega en ingles y entrega el texto de manera formal y sin hablar de mas, no añadas ninguna letra o simbolo que no corresponda";

        const result = await model.generateContent(prompt);
        const content=result.response.text();
        res.render('index', {content});
        
    }
    catch (error) {
        res.render('index');
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

router.get('/product', async (req, res) => {
    try {
        res.render('product');
        
    }
    catch (error) {
        res.render('index');
    }

});

module.exports = router;
