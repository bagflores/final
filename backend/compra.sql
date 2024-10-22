CREATE TABLE Compra (
  id_compra INT AUTO_INCREMENT PRIMARY KEY,
  fecha_compra DATE NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  id_usuario INT NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);
