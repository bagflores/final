CREATE TABLE Rol (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- ingresamos los roles predefinidos
INSERT INTO Rol (nombre) VALUES
('Publico'),       -- acceso a información básica
('General'),       -- acceso a información detallada
('Vendedor'),      -- acceso a datos complementarios
('Organizador'),   -- acceso a datos complementarios
('Admin'),         -- acceso a cambios de parámetros
('Primo');         -- acceso total
