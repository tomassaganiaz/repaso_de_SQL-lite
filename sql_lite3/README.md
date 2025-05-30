trabajo practico N_1: programacion 

1. Ejercicios de Creación de Tablas

ejercicio 1: Crear tabla "Clientes"

*Crea una tabla llamada Clientes con los siguientes campos:

id_cliente (entero, clave primaria autoincremental)
nombre (texto, máximo 50 caracteres, obligatorio)
apellido (texto, máximo 50 caracteres, obligatorio)
email (texto, máximo 100 caracteres, único)
fecha_registro (fecha, valor por defecto: fecha actual)
telefono (texto, máximo 15 caracteres, opcional).*

Ejercicio 2: Crear tabla "Productos"

*Diseña una tabla Productos que almacene:

id_producto (entero, clave primaria autoincremental)
nombre (texto, máximo 100 caracteres, obligatorio)
descripcion (texto largo, opcional)
precio (decimal con 2 decimales, obligatorio)
stock (entero, valor por defecto: 0)
categoria (texto, máximo 50 caracteres, opcional).*

Ejercicio 3: Crear tabla "Pedidos" con clave foránea

*Crea una tabla Pedidos que incluya:

id_pedido (entero, clave primaria autoincremental)
id_cliente (entero, obligatorio, relación con Clientes)
fecha_pedido (fecha y hora, valor por defecto: momento actual)
estado (texto, máximo 20 caracteres, valor por defecto: 'Pendiente')
total (decimal con 2 decimales, opcional).
Asegúrate de definir la relación con la tabla Clientes.*

2. Ejercicios de Selección (Consultas)

Ejercicio 4: Listar clientes ordenados alfabéticamente

Escribe una consulta que muestre todos los campos de la tabla Clientes,
ordenados por el campo apellido en orden ascendente.
Ejercicio 5: Filtrar productos por precio y stock
Selecciona el nombre, precio y stock de los productos cuyo precio sea mayor a 50
y cuyo stock sea menor a 10.

Ejercicio 6: Pedidos pendientes con datos del cliente

Muestra el id_pedido, nombre y apellido del cliente, fecha_pedido y total de todos
los pedidos con estado 'Pendiente'. Usa un JOIN para relacionar las tablas Pedidos y
Clientes.

3. Ejercicios de Inserción de Datos

Ejercicio 7: Agregar un nuevo cliente

*Inserta un nuevo registro en la tabla Clientes con los siguientes datos:
Nombre: 'María'
Apellido: 'González'
Email: 'maria.gonzalez@email.com'
Teléfono: '555-1234'.
No incluyas el id_cliente ni la fecha_registro (deben asignarse automáticamente).*

Ejercicio 8: Añadir un nuevo producto

*Inserta un producto en la tabla Productos con estas características:
Nombre: 'Teclado inalámbrico'
Descripción: 'Teclado ergonómico con conexión Bluetooth'
Precio: 89.99
Stock: 15
Categoría: 'Periféricos'.*

4. Ejercicios de Actualización de Datos

Ejercicio 9: Aumentar precios por categoría

Actualiza la tabla Productos para incrementar un 10% el precio de todos los
productos cuya categoría sea 'Periféricos'.
Ejercicio 10: Cambiar estado de un pedido
Actualiza el pedido con id_pedido = 5, cambiando su estado a 'Enviado' y
actualizando su fecha_pedido a la fecha y hora actual.

5. Ejercicio de Eliminación de Datos

Ejercicio 11: Eliminar cliente sin pedidos

Borra al cliente con id_cliente = 7 solo si no tiene pedidos asociados en la tabla
Pedidos. Usa una subconsulta para verificar esta condición.
