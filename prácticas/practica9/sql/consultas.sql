USE Northwind;

-- El nombre completo con titulo de cortesía y cantidad de años laborando del empleado con más antigüedad.
SELECT TOP(1) CONCAT(nombre, ' ', apellido) nombreCompleto, tituloDeCortesia, (YEAR(GETDATE()) - YEAR(fechaContratacion)) aniosLaborados
FROM Empleados
ORDER BY fechaContratacion ASC;


-- Id del pedido, fecha de entrega, fecha de envío de los pedidos que 
-- se hayan realizado por un empleado perteneciente al pais 'UK' cuyo destino es Mexico.
SELECT idPedido, fechaEntrega, fechaEnvio
FROM Pedidos INNER JOIN Empleados
ON Pedidos.idEmpleado = Empleados.idEmpleado
WHERE pais = 'UK' AND paisDestinatario = 'Mexico';


-- El nombre completo y la fecha de entrega de los clientes que hayan
-- solicitado pedidos de productos con la categoría 'Seafood'.
SELECT DISTINCT nombreContacto, fechaEntrega
FROM Clientes INNER JOIN Pedidos
ON Clientes.idCliente = Pedidos.idCliente
INNER JOIN DetallesPedido 
ON Pedidos.idPedido = DetallesPedido.idPedido
INNER JOIN Productos 
ON DetallesPedido.idProducto = Productos.idProducto
INNER JOIN Categorias 
ON Productos.idCategoria = Categorias.idCategoria
WHERE nombreCategoria = 'Seafood';


-- Supón que la fecha actual es 1 de Enero de 1998. Encontrar los pedidos
-- de los productos descontinuados que aún no han llegado (se
-- considera que un producto no ha llegado si la fecha de entrega del
-- pedido es mayor a la actual o null).
SELECT Pedidos.idPedido Pedido
FROM Pedidos INNER JOIN DetallesPedido
ON Pedidos.idPedido = DetallesPedido.idPedido
INNER JOIN Productos
ON DetallesPedido.idProducto = Productos.idProducto
WHERE descontinuado = 1 AND (fechaEntrega > '01-01-1998' OR fechaEntrega = NULL);


-- Todos los productos que hayan sido despachados por los empleados de la región 'Eastern'.
SELECT DISTINCT nombreProducto
FROM Region INNER JOIN Territorios
ON Region.idRegion = Territorios.idRegion
INNER JOIN TerritoriosEmpleado
ON Territorios.idTerritorio = TerritoriosEmpleado.idTerritorio
INNER JOIN Empleados 
ON TerritoriosEmpleado.idEmpleado = Empleados.idEmpleado
INNER JOIN Pedidos
ON Empleados.idEmpleado = Pedidos.idEmpleado
INNER JOIN DetallesPedido 
ON Pedidos.idPedido = DetallesPedido.idPedido
INNER JOIN Productos
ON DetallesPedido.idProducto = Productos.idProducto
WHERE descripcionRegion = 'Eastern';
