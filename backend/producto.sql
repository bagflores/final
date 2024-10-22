CREATE TABLE Producto (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  nombre_producto VARCHAR(100) NOT NULL,
  descripcion TEXT,
  precio DECIMAL(10,2) NOT NULL,
  stock INT NOT NULL,
  id_feria INT,
  FOREIGN KEY (id_feria) REFERENCES Feria(id_feria),
  id_vendedor INT,
  FOREIGN KEY (id_vendedor) REFERENCES Usuario(id_usuario)
);
