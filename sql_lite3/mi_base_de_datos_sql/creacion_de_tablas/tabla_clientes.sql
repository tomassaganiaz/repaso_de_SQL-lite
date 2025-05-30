--ej 1: crear tabla cliente --

CREATE TABLE Clientes (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT NOT NULL CHECK(LENGTH(nombre) <= 50),
    apellido TEXT NOT NULL CHECK(LENGTH(apellido) <= 50),
    email TEXT UNIQUE NOT NULL CHECK(LENGTH(email) <= 100),
    fecha_registro DATE DEFAULT (DATE('now')),
    telefono TEXT CHECK(LENGTH(telefono) <= 15)
);

--ej 4: lista de clientes ordenada alfabeticamente -- 

SELECT * FROM Clientes
ORDER BY apellido ASC;

--ej 6: Pedidos pendientes con datos del cliente -- 

SELECT p.id_pedido, c.nombre, c.apellido, p.fecha_pedido, p.total
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
WHERE p.estado = 'Pendiente';


--ej 7: Agregar un nuevo cliente --

INSERT INTO Clientes (nombre, apellido, email, telefono)
VALUES ('María', 'González', 'maria.gonzalez@email.com', '555-1234');

--ej 11: Eliminar cliente sin pedidos -- 

DELETE FROM Clientes
WHERE id_cliente = 7 AND NOT EXISTS (
    SELECT 1 FROM Pedidos WHERE id_cliente = 7
);
