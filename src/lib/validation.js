const { body, check } = require('express-validator');


const validateContent = [
  // Validación para el archivo de imagen (picture)
  body('picture').custom((value, { req }) => {
    if (!req.file || !req.file.originalname) {
      throw new Error('Debes subir una imagen ');
    }
    return true;
  }),

  // Validación para el tipo (type)
  body('type')
    .isInt({ min: 1, max: 3 })
    .withMessage('El tipo debe ser un valor entre 1 y 3 '),

  // Validación para el título (title)
  body('title')
    .notEmpty()
    .withMessage('El título es obligatorio ')
    .isLength({ max: 100 })
    .withMessage('El título no puede tener más de 100 caracteres '),

  // Validación para el contenido (content)
  body('content')
    .notEmpty()
    .withMessage('El contenido es obligatorio ')
    .isLength({ min: 10,
      max: 400
     })
    .withMessage('El contenido debe tener al menos 10 caracteres '),

];


const validateProduct = [
  body('name')
    .notEmpty().withMessage(' El nombre del producto es obligatorio')
    .isLength({ min: 3 }).withMessage(' El nombre debe tener al menos 3 caracteres'),
  body('price')
    .notEmpty().withMessage(' El precio es obligatorio')
    .isFloat({ min: 0.01 }).withMessage(' El precio debe ser un número positivo'),
  body('text')
    .notEmpty().withMessage(' La descripción es obligatoria')
    .isLength({ min: 10,  max: 400 }).withMessage(' La descripción debe tener al menos 10 caracteres'),
  body('picture').custom((value, { req }) => {
    if (!req.file) {
      throw new Error(' La imagen es obligatoria');
    }
    return true;
  })
];

const validateSignup = [
  body('user')
    .notEmpty().withMessage('El nombre de usuario es obligatorio')
    .isAlphanumeric().withMessage(' El nombre de usuario solo puede contener letras y números')
    .isLength({ min: 3, max: 20 }).withMessage(' El nombre de usuario debe tener entre 3 y 20 caracteres'),

  body('type')
    .isInt({ min: 1, max: 2 }).withMessage(' El rol debe ser 1 o 2'),

  body('nombre')
    .notEmpty().withMessage(' El nombre es obligatorio')
    .isLength({ max: 50 }).withMessage(' El nombre no debe exceder los 50 caracteres'),

  body('email')
    .notEmpty().withMessage(' El correo electrónico es obligatorio')
    .isEmail().withMessage(' Debe ser un correo electrónico válido'),

  body('password')
    .notEmpty().withMessage( 'La contraseña es obligatoria')
    .isLength({ min: 6 }).withMessage(' La contraseña debe tener al menos 6 caracteres'),

  body('repassword')
    .notEmpty().withMessage(' Debe confirmar la contraseña')
    .custom((value, { req }) => value === req.body.password)
    .withMessage(' Las contraseñas no coinciden'),

  (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    next();
  }
];
const validateCarousel = [
  // Validate the picture file
  body('picture').custom((value, { req }) => {
    if (!req.file) {
      throw new Error(' La imagen es obligatoria');
    }
    return true;
  }),

  // Validate the title
  body('title')
    .trim()
    .notEmpty().withMessage(' El título es obligatorio.')
    .isLength({ min: 3, max: 100 }).withMessage(' El título debe tener entre 3 y 100 caracteres.'),

  // Validate the description
  body('text')
    .optional()
    .trim()
    .isLength({ min: 10, max: 500 }).withMessage('La descripción debe tener al menos 10 caracteres y no puede superar los 500 caracteres.')
];

module.exports = {validateProduct, validateSignup, validateCarousel, validateContent};
