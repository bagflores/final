// a partir del backend, creamos las rutas en express.js para gestionar la creación de cuentas.
const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');
const nodemailer = require('nodemailer');
const User = require('../models/usuario');

// ruta para crear una cuenta
router.post('/register', async (req, res) => {
    const { nombre, apellido, mail, contrasenia, telefono, dni, localidad, direccion, userType, cuit, feria, banco, cbu, billeteraVirtual, cvu, alias } = req.body;
    
    try {
        // hashear la contraseña (ruteado)
        const hashedPassword = await bcrypt.hash(contrasenia, 10);
        
        // determinamos el rol segun el tipo de usuario
        let idRol;
        switch(userType) {
            case 'general':
                idRol = 2;
                break;
            case 'vendedor':
                idRol = 3;
                break;
            case 'organizador':
                idRol = 4;
                break;
            default:
                idRol = 1; // publico por defecto inicial
        }
        
        // crear el nuevo usuario
        const newUser = new User({
            nombre,
            apellido,
            mail,
            contrasenia: hashedPassword,
            telefono,
            dni,
            localidad,
            direccion,
            id_rol: idRol,
            cuit,
            feria,
            banco,
            cbu,
            billeteraVirtual,
            cvu,
            alias
        });
        
        // guardamos el usuario en la base de datos
        await newUser.save();
        
        // enviamos email de informacion de creacion de cuenta (usando nodemailer)
        // creamos un transportador SMTP con las credenciales de email
        const transporter = nodemailer.createTransport({
            service: 'Gmail',
            auth: {
                user: 'your-email@gmail.com',
                pass: 'your-password'
            }
        });

        // enviamos email
        const mailOptions = {
            from: 'your-email@gmail.com',
            to: mail,
            subject: 'Verificación de Cuenta',
            text: '¡Tu cuenta ha sido creada con éxito! Por favor si Usted no creó una cuenta en ConectaMisiones debe iniciar el reclamo en nuestra web en el sector de CONTACTO.'
        };
        
        transporter.sendMail(mailOptions, (error, info) => {
            if (error) {
                return res.status(500).send('Error enviando el correo.');
            }
            res.status(200).send('Cuenta creada correctamente, inicia sesión y se verificará automaticamente la cuenta.');
        });
        
    } catch (error) {
        res.status(500).send('Error creando la cuenta');
    }
});

module.exports = router;
