const bcrypt = require('bcryptjs');
const sharp = require('sharp');
const fs = require('fs');
const path = require('path');
const uuid = require('uuid');
const pool = require('../database');

const helpers = {};

helpers.encryptPassword = async (password) => {
  const salt = await bcrypt.genSalt(10);
  const hash = await bcrypt.hash(password, salt);
  return hash;
};

helpers.matchPassword = async (password, savedPassword) => {
  try {

    return await bcrypt.compare(password, savedPassword);
  } catch (e) {
    console.log(e)
  }
};

helpers.uploadvideo = async (file, pathRoot)=>{

    // Si es un video, guardar el archivo en el disco
    const videoName= Date.now() + path.extname(file.originalname);
    console.log("Nombre Imagen: "+ videoName)
    const outputFilePath = path.join(path.join(__dirname, `../public/uploads/vid/${videoName}`));
    try{
      fs.writeFileSync(outputFilePath, file.buffer)
      return videoName;
    }
    catch(err){
      console.log(err)
        throw new Error("No se subió el Video")
    }
  
}


helpers.resizeImage = async (file, pathRoot,fit='cover') => {
  try {

    const metadata = await sharp(file.buffer).metadata();
    const width = metadata.width;
    const height = metadata.height;

    const resG_w = width;
    const resG_h = height;
    const ResT = 350;
    const ResT_w = ResT;
    const ResT_h = Math.round(ResT_w * (resG_w / resG_w));
    const ResM = 400;
    const ResM_w = ResM;
    const ResM_h = Math.round(ResM_w * (resG_w / resG_w));
    let unicid = "";




    unicid = uuid.v4();
    let name = unicid + ".png";
    const imageName = name;
    console.log(imageName);
    console.log("EL PATH ES: " + pathRoot + name);
    sharp(file.buffer).resize(resG_w, resG_h, { fit: fit }).toBuffer().then((data) => {
      fs.writeFileSync(path.join(__dirname, `../${pathRoot}img_w/${name}`), data)
    })
      .catch((err) => {
        console.error(`Error procesando la imagen: ${err.message}`);
        throw new Error(err.message);
      });

    sharp(file.buffer).resize(ResT_w, ResT_h, { fit: fit }).toBuffer().then((data) => {
      fs.writeFileSync(path.join(__dirname, `../${pathRoot}img_t/thumb_${name}`), data)
    })
      .catch((err) => {
        console.error(`Error procesando la imagen: ${err.message}`);
        throw new Error(err.message);
      });

    sharp(file.buffer).resize(ResM_w, ResM_h, { fit: fit }).toBuffer().then((data) => {
      fs.writeFileSync(path.join(__dirname, `../${pathRoot}img_m/${name}`), data)
    })
      .catch((err) => {
        console.error(`Error procesando la imagen: ${err.message}`);
        throw new Error(err.message);
      });

    return imageName;
  }
  catch (e) {
    console.log("Error al guardar la imagen" + e)
    throw new Error(e);

  }



};


helpers.resizeImageCarousel = async (file, pathRoot) => {
  try {
    const minWidth = 1500; // Resolución mínima de ancho
    const minHeight = 600; // Resolución mínima de alto
    const unicid = uuid.v4();
    let name = unicid + process.env.WEB_IMG_EXT;
    const imageName = name;

    console.log(`Imagen generada con nombre: ${imageName}`);

    // Obtener los metadatos de la imagen
    const metadata = await sharp(file.buffer).metadata();
    console.log(`La imagen tiene las dimensiones: ${metadata.width} x ${metadata.height}`);

    // Verificar si la imagen cumple con la resolución mínima
    if (metadata.width < minWidth || metadata.height < minHeight) {
      console.log(`La imagen debe tener al menos ${minWidth}x${minHeight} píxeles.`);
      throw new Error(`La imagen debe tener al menos ${minWidth}x${minHeight} píxeles.`);
    }

    // Si la imagen es válida, la redimensionamos
    const outputPath = path.join(__dirname, `../${pathRoot}${name}`);
    console.log(outputPath);

    await sharp(file.buffer)
      .resize(minWidth, minHeight, {
        fit: sharp.fit.cover,
        position: sharp.strategy.entropy,
      })
      .webp({ quality: 80 }) // Reducción de calidad para el tamaño del archivo
      .toFile(outputPath);

    console.log(`Imagen cargada y redimensionada correctamente en: ${outputPath}`);
    return imageName;

  } catch (err) {
    console.log('Error al procesar la imagen:', err);
    throw new Error(err);
  }
};

helpers.delFile = async (name, pathRoot, single) => {
  try {

    if (!single) {
      console.log("NO ES SINGLE")
      fs.unlinkSync(path.join(__dirname, `../${pathRoot}img_w/${name}`));
      fs.unlinkSync(path.join(__dirname, `../${pathRoot}img_t/thumb_${name}`));
      fs.unlinkSync(path.join(__dirname, `../${pathRoot}img_m/${name}`));
      console.log('The File has been deleted successfully');
    }
    else {
      console.log("ES SINGLE")
      fs.unlinkSync(path.join(__dirname, `../${pathRoot}${name}`));
    }

  }
  catch (e) {
    console.log('File no deleted' + e);
    throw new Error(e);

  }
}
/*
helpers.delFile = async (rows, pathRoot) => {
  console.log(rows);
  try {
    rows.forEach(row => {
      Object.entries(row).forEach(([key, value]) => {
        fs.unlinkSync(path.join(__dirname, `../${pathRoot}${value}`));
        console.log("EL PATH ES: " + pathRoot + value);
        //fs.unlinkSync(path.join(__dirname, `../public/uploads/images/img_t/thumb_${value}`));
        //fs.unlinkSync(path.join(__dirname, `../public/uploads/images/img_m/${value}`));
      });
    });


    console.log('The File has been deleted successfully');

  }
  catch (e) {
    console.log('File no deleted' + e);
    throw new Error(e);

  }
}
*/

helpers.checkFile = async (path) => {

  const file = fs.existsSync(path)
  if (file) {
    console.log('File exists', file + "   " + path);
    return true

  }
  else {
    console.log('File doesnt exists', file + "   " + path);
  }
  return false
}

helpers.registerVisitWithIP= async(ip)=> {
  try {
      const [result] = await pool.query('INSERT INTO visits (date, ip) VALUES ( NOW(), ?)', [ip]);
      console.log('Visita registrada con IP:', ip);
  } catch(err) {
    console.log(err)
  }
}


module.exports = helpers;