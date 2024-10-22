CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    mail VARCHAR(50) UNIQUE NOT NULL,
    contrasenia VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    dni VARCHAR(20),
    localidad VARCHAR(50),
    direccion VARCHAR(100),
    id_rol INT, 
    FOREIGN KEY (id_rol) REFERENCES Rol(id_rol)
);

-- como ingresamos un usuario general
INSERT INTO Usuario (nombre, apellido, mail, contrasenia, telefono, dni, localidad, direccion, id_rol)
VALUES ('Juan', 'Perez', 'juan.perez@example.com', 'hashed_password', '123456789', '12345678', 'Posadas', 'Calle Falsa 123', 2); 

-- como ingresamos un usuario vendedor
INSERT INTO Usuario (nombre, apellido, mail, contrasenia, telefono, dni, localidad, direccion, id_rol)
VALUES ('Maria', 'Gomez', 'maria.gomez@example.com', 'hashed_password', '987654321', '87654321', 'Posadas', 'Calle Real 456', 3);
