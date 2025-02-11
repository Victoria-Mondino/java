-- Insertar clientes
INSERT INTO cliente (nombre, email) VALUES
('Juan Pérez', 'juan@example.com'),
('María Gómez', 'maria@example.com');

-- Insertar productos
INSERT INTO producto (nombre, precio, stock) VALUES
('Laptop', 1500.00, 10),
('Teléfono', 800.00, 20),
('Tablet', 400.00, 15);

-- Insertar facturas
INSERT INTO factura (cliente_id, fecha, total) VALUES
(1, '2024-01-10', 2300.00),
(2, '2024-01-11', 800.00);

-- Insertar detalles de facturas
INSERT INTO detalle_factura (factura_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 1500.00),
(1, 3, 2, 400.00),
(2, 2, 1, 800.00);