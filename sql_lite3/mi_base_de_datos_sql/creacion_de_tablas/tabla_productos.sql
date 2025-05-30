--ej 2: crear tabla productos --

CREATE TABLE Productos (
    id_producto INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL CHECK(LENGTH(nombre) <= 100),
    descripcion TEXT,
    precio REAL NOT NULL CHECK(precio >= 0),
    stock INTEGER DEFAULT 0 CHECK(stock >= 0),
    categoria TEXT CHECK(LENGTH(categoria) <= 50)
);

--ej 5: Filtrar productos por precio y stock --

SELECT nombre, precio, stock
FROM Productos
WHERE precio > 50 AND stock < 10;

--ej 8: Añadir un nuevo producto

INSERT INTO Productos (nombre, descripcion, precio, stock, categoria)
VALUES ('Teclado inalámbrico', 'Teclado ergonómico con conexión Bluetooth', 89.99, 15, 'Periféricos');

--ej 9: Aumentar precios por categoría --

UPDATE Productos
SET precio = precio * 1.10
WHERE categoria = 'Periféricos';
