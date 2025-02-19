INSERT INTO cliente (nombre, email) VALUES
('Anna Maccario', 'cliente1@example.com'),
('Mateo Maccario', 'cliente2@example.com');

INSERT INTO producto (nombre, precio, stock) VALUES
('Producto A', 99.99, 50),
('Producto B', 199.99, 30);

INSERT INTO factura (cliente_id, fecha, total) VALUES
(1, '2024-01-20', 299.98),
(2, '2024-01-21', 199.99);

INSERT INTO detalle_factura (factura_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 2, 99.99),
(2, 2, 1, 199.99);