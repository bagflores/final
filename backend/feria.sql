CREATE TABLE Feria (
  id_feria INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NOT NULL,
  horario VARCHAR(50) NOT NULL,
  id_ubicacion INT, -- para una futura integracion con ubicaciones mas detalladas (ej.: Google Maps)
  id_vendedor INT,
  FOREIGN KEY (id_vendedor) REFERENCES Usuario(id_usuario)
);
