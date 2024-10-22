-- Crear tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) not null,
    email VARCHAR(100) not null,
    direccion VARCHAR(255) not null,
    telefono VARCHAR(15) not null,
    pais VARCHAR(50) not null,
);

-- Crear tabla Empleados
CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(100) not null,
    cargo VARCHAR(100) not null,
    email VARCHAR(100) not null
);

-- Crear tabla Proveedores
CREATE TABLE Proveedores (
    id_proveedor INT PRIMARY KEY,
    nombre VARCHAR(100) not null,
    contacto VARCHAR(100) not null,
    telefono VARCHAR(15) not null,
    direccion VARCHAR(255) not null
);

-- Crear tabla Envíos
CREATE TABLE Envios (
    id_envio INT PRIMARY KEY,
    id_cliente INT not null,
    id_empleado INT not null,
    id_proveedor INT not null,
    fecha_envio DATE not null,
    estado VARCHAR(50) not null,
    total NUMERIC(12, 2),
    FOREIGN KEY (id_cliente) 
    	REFERENCES Clientes(id_cliente),
    	on delete restrict
    	on update cascade
    FOREIGN KEY (id_empleado) 
    	REFERENCES Empleados(id_empleado),
    	on delete restrict
    	on update cascade
    FOREIGN KEY (id_proveedor) 
    	REFERENCES Proveedores(id_proveedor)
    	on delete restrict
    	on update cascade
);

-- Crear tabla Detalle de Envíos
CREATE TABLE Detalle_Envios (
    id_detalle INT PRIMARY KEY,
    id_envio INT not null,
    producto VARCHAR(100) not null,
    cantidad INT not null,
    precio_unitario NUMERIC(10, 2) not null,
    FOREIGN KEY (id_envio) 
    	REFERENCES Envios(id_envio)
);

-- Crear tabla Regiones
CREATE TABLE Regiones (
    id_region INT PRIMARY KEY,
    nombre VARCHAR(100),
    pais VARCHAR(50)
);

-- Insertar 10 clientes
INSERT INTO Clientes (id_cliente, nombre, email, direccion, telefono, pais) 
	VALUES
(1, 'Ana', 'ana@gmail.com', 'Direccion A', '654321987', 'Argentina'),
(2, 'Carlos', 'carlos@outlook.com', 'Direccion B', '987654321', 'México'),
(3, 'Lucía', 'lucia@gmail.com', 'Direccion C', '1122334455', 'Colombia'),
(4, 'Mario', 'mario@gmail.com', 'Direccion D', '998877665', 'España'),
(5, 'Sofía', 'sofia@yahoo.com', 'Direccion E', '667788990', 'Chile'),
(6, 'Andrés', 'andres@outlook.com', 'Direccion F', '556677889', 'Perú'),
(7, 'Valeria', 'valeria@outlook.com', 'Direccion G', '445566778', 'Uruguay'),
(8, 'Javier', 'javier@hotmail.com', 'Direccion H', '998877123', 'Paraguay'),
(9, 'Isabel', 'isabel@gmail.com', 'Direccion I', '876543210', 'Venezuela'),
(10, 'Pedro', 'pedro@yahoo.com', 'Direccion J', '334455667', 'Costa Rica');


-- Insertar 5 empleados
INSERT INTO Empleados (id_empleado, nombre, cargo, email) 
	VALUES
(1, 'Pedro', 'Gerente', 'pedroz@gmail.com'),
(2, 'Nuno', 'Analista', 'nuno@gmail.com'),
(3, 'Lucia', 'Dependiente', 'luciav@gmail.com'),
(4, 'Carlos', 'limpiador', 'carlos@gmail.com'),
(5, 'Juan', 'Administrativo', 'juan@gmail.com')


INSERT INTO Empleados (id_empleado, nombre, cargo, email) 
	VALUES
(6, 'Jose', 'Supervisor de Envíos', 'jose@gmail.com');

-- Insertar 3 proveedores
INSERT INTO Proveedores (id_proveedor, nombre, contacto, telefono, direccion) VALUES
(1, 'Proveedor A', 'Julian', '555555555', 'Direccion P A'),
(2, 'Proveedor B', 'Juan', '444444444', 'Direccion P B'),
(3, 'Proveedor C', 'Belen', '333333333', 'Direccion P C');

-- Insertar 8 envíos
INSERT INTO Envios (id_envio, id_cliente, id_empleado, id_proveedor, fecha_envio, estado, total) VALUES
(1, 1, 1, 1, '2024-01-10', 'Pendiente', 100.00),
(2, 2, 2, 2, '2024-02-15', 'Entregado', 150.00),
(3, 3, 3, 3, '2024-01-12', 'Pendiente', 78.00),
(4, 4, 4, 1, '2024-02-16', 'Entregado', 110.00),
(5, 5, 5, 2, '2024-01-18', 'Pendiente', 130.00),
(6, 6, 3, 3, '2024-02-25', 'Entregado', 90.00),
(7, 7, 2, 3, '2024-01-11', 'Pendiente', 85.00),
(8, 8, 1, 2, '2024-02-15', 'Entregado', 90.00);


-- Insertar 8 detalles de envíos
INSERT INTO Detalle_Envios (id_detalle, id_envio, producto, cantidad, precio_unitario) VALUES
(1, 1, 'Producto A', 2, 50.00),
(2, 2, 'Producto C', 5, 100.00),
(3, 1, 'Producto D', 8, 50.00),
(4, 2, 'Producto B', 4, 100.00),
(5, 1, 'Producto E', 10, 50.00),
(6, 2, 'Producto F', 9, 100.00),
(7, 1, 'Producto G', 1, 50.00),
(8, 2, 'Producto H', 5, 100.00);

-- Insertar 5 regiones
INSERT INTO Regiones (id_region, nombre, pais) VALUES
(1, 'Region Norte', 'España'),
(2, 'Region Sur', 'España'),
(3, 'Region Norte', 'Portugal'),
(4, 'Region Sur', 'Portugal'),
(5, 'Region Sur', 'Francia');

-- 1. Actualizar estado de un envío
UPDATE Envios SET estado = 'Entregado' 
WHERE id_envio = 3;

-- 2. Modificar cargo de un empleado
UPDATE Empleados SET cargo = 'Director de Datos' 
WHERE id_empleado = 5;

-- 3. Incrementar precio unitario de un producto en 10%
UPDATE Detalle_Envios SET precio_unitario = precio_unitario * 1.10 
WHERE producto = 'Producto A';

-- 4. Actualizar la dirección de un cliente
UPDATE Clientes SET direccion = 'Nueva Calle B, 123' 
WHERE id_cliente = 2;

-- 5. Cambiar el proveedor de un envío
UPDATE Envios SET id_proveedor = 3 
WHERE id_envio = 4;

-- 6. Actualizar la cantidad de un producto
UPDATE Detalle_Envios SET cantidad = 5 
WHERE producto = 'Producto C' AND id_envio = 2;

-- 7. Incrementar el total de un envío
UPDATE Envios SET total = total + 50 
WHERE id_envio = 5;

-- 8. Modificar el contacto de un proveedor
UPDATE Proveedores SET contacto = 'Nuevo Contacto 2' 
WHERE id_proveedor = 2;

-- 9. Cambiar el país de un cliente
UPDATE Clientes SET pais = 'Portugal' 
WHERE id_cliente = 6;

-- 10. Actualizar la fecha de un envío
UPDATE Envios SET fecha_envio = '2024-08-10' 
WHERE id_envio = 7;

---------------------------------------------------------------------

-- 1. Añadir columna fecha_nacimiento en Clientes
ALTER TABLE Clientes 
add fecha_nacimiento DATE;

-- 2. Añadir columna codigo_postal en Proveedores
ALTER TABLE Proveedores 
add codigo_postal VARCHAR(10);

-- 3. Eliminar columna contacto de Proveedores
ALTER TABLE Proveedores 
drop column contacto;

-- 4. Eliminar columna pais de Regiones
ALTER TABLE Regiones 
drop column pais;

-- 5. Modificar el tipo de dato de la columna telefono en Clientes
ALTER TABLE Clientes 
alter COLUMN telefono TYPE VARCHAR(15);

-- 6. Modificar el tipo de dato de la columna total en Envios
ALTER TABLE Envios 
alter column total NUMERIC(12, 2);

-- 7. Añadir columna fecha_contrato en Empleados
ALTER TABLE Empleados 
add fecha_contrato DATE;

-- 8. Eliminar columna estado en Envios
ALTER TABLE Envios 
drop column estado;

-- 9. Cambiar el nombre de la columna nombre a nombre_completo en Empleados
ALTER TABLE Empleados 
alter column nombre to nombre_completo;

----------------------------------------------------------------------------

-- 1. Listar todos los clientes que viven en España
SELECT * FROM Clientes 
WHERE pais = 'España';

-- 2. Obtener todos los envíos realizados por un empleado específico
SELECT * FROM Envios 
WHERE id_empleado = 1;

-- 3. Listar todos los productos incluidos en un envío específico
SELECT * FROM Detalle_Envios 
WHERE id_envio = 1;

-- 4. Encontrar todos los proveedores con un teléfono específico
SELECT * FROM Proveedores 
WHERE telefono = '555555555';

-- 5. Listar los empleados que tienen un cargo de "Supervisor de Envíos"
SELECT * FROM Empleados 
WHERE cargo = 'Supervisor de Envíos';

-- 6. Obtener todos los envíos que fueron realizados por el cliente con id_cliente = 5
SELECT * FROM Envios 
WHERE id_cliente = 5;

-- 7. Listar todas las regiones con su nombre y país
SELECT nombre FROM Regiones;

-- 8. Mostrar todos los productos cuyo precio unitario sea mayor que 50
SELECT * FROM Detalle_Envios 
WHERE precio_unitario > 50;

-- 9. Obtener todos los envíos realizados el 2024-08-05
SELECT * FROM Envios 
WHERE fecha_envio = '2024-08-05';

-- 10. Listar todos los clientes que tienen un número de teléfono que comienza con "6543"
SELECT * FROM Clientes 
WHERE telefono LIKE '6543%';

