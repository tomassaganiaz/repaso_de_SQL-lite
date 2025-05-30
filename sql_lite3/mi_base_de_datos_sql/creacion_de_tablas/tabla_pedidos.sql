--ej 3: crear tabla pedidos con clave primaria -- 

CREATE TABLE Pedididos (
	id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER NOT NULL,
    fecha_pedido DATETIME DEFAULT (DATETIME('now')),
    estado TEXT DEFAULT 'Pendiente' CHECK(LENGTH(estado) <= 20),
    total REAL CHECK(total >= 0),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
)

--ej 10: Cambiar estado de un pedido

UPDATE Pedidos
SET estado = 'Enviado', fecha_pedido = CURRENT_TIMESTAMP
WHERE id_pedido = 5;
