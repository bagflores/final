-- creamos la tabla roles
CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- creamos la tabla usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefono VARCHAR(20),
    dni VARCHAR(20) NOT NULL,
    contrasena VARCHAR(255) NOT NULL,
    localidad VARCHAR(100),
    direccion VARCHAR(255),
    cuit VARCHAR(20),
    banco VARCHAR(100),
    cbu VARCHAR(22),
    billetera_virtual VARCHAR(100),
    cvu VARCHAR(22),
    alias VARCHAR(50),
    rol_id INT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_rol FOREIGN KEY (rol_id) REFERENCES roles(id) ON DELETE SET NULL
);

-- creamos la tabla ferias
CREATE TABLE ferias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    ubicacion VARCHAR(255) NOT NULL,
    fecha DATE NOT NULL
);

-- creamos la tabla productos
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    vendedor_id INT,
    feria_id INT,
    CONSTRAINT fk_vendedor FOREIGN KEY (vendedor_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    CONSTRAINT fk_feria FOREIGN KEY (feria_id) REFERENCES ferias(id) ON DELETE CASCADE
);

-- creamos la tabla eventos
CREATE TABLE eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha DATE NOT NULL,
    ubicacion VARCHAR(255),
    precio DECIMAL(10, 2),
    OrganizadorEventos_id INT,
    CONSTRAINT fk_organizador FOREIGN KEY (OrganizadorEventos_id) REFERENCES usuarios(id) ON DELETE CASCADE
);
