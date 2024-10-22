CREATE TABLE DetalleCompra (
  id_detalle_compra INT AUTO_INCREMENT PRIMARY KEY,
  id_compra INT NOT NULL,
  id_producto INT,
  id_evento INT,
  cantidad INT NOT NULL,
  precio_unitario DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
  FOREIGN KEY (id_evento) REFERENCES Evento(id_evento)
);
