CREATE TABLE Evento (
  id_evento INT AUTO_INCREMENT PRIMARY KEY,
  nombre_evento VARCHAR(100) NOT NULL,
  fecha DATE NOT NULL,
  hora_inicio TIME NOT NULL,
  hora_fin TIME NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  precio_entrada DECIMAL(10,2),
  entradas_disponibles INT,
  id_responsable INT,
  FOREIGN KEY (id_responsable) REFERENCES Usuario(id_usuario)
);
