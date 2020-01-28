USE Northwind;

-- consulta 1
SELECT titulo, COUNT(titulo) numEmpleados
FROM Empleados
GROUP BY titulo;

--consulta 2
SELECT A.idEmpleado, COUNT(B.idEmpleado) numEmpladosACargo
FROM Empleados A INNER JOIN Empleados B
ON A.idEmpleado = B.idEmpleado
GROUP BY A.idEmpleado
ORDER BY A.idEmpleado;

-- consulta 3
SELECT ciudad
FROM Clientes
GROUP BY ciudad
HAVING COUNT(idCliente) > 1;

--consulta 4
SELECT idProvedor, nombreCategoria, COUNT(Productos.idProducto) totalProductos
FROM Pedidos INNER JOIN DetallesPedido
ON Pedidos.idPedido = DetallesPedido.idPedido
INNER JOIN Productos
ON DetallesPedido.idProducto = Productos.idProducto
INNER JOIN Categorias
ON Productos.idCategoria = Categorias.idCategoria
GROUP BY idProvedor, nombreCategoria;

-- consulta 5
SELECT TOP (1) nombreCompania, COUNT(Pedidos.idPedido) AS numPedidos
FROM CompaniasEnvio INNER JOIN Pedidos ON CompaniasEnvio.idCompaniaEnvio = Pedidos.viaEnvio
INNER JOIN DetallesPedido ON Pedidos.idPedido = DetallesPedido.idPedido
INNER JOIN Productos ON DetallesPedido.idProducto = Productos.idProducto
INNER JOIN Categorias ON Productos.idCategoria = Categorias.idCategoria
WHERE nombreCategoria = 'Dairy Products'
GROUP BY nombreCompania
ORDER BY numPedidos DESC;

-- consulta 6 
SELECT TOP(1) descripcionRegion, COUNT(Empleados.idEmpleado) numEmpleados
FROM Empleados INNER JOIN TerritoriosEmpleado ON TerritoriosEmpleado.idEmpleado = Empleados.idEmpleado
INNER JOIN Territorios ON TerritoriosEmpleado.idTerritorio = Territorios.idTerritorio
INNER JOIN Region ON Territorios.idRegion = Region.idRegion
GROUP BY descripcionRegion
ORDER BY numEmpleados DESC;

-- consulta 7
SELECT TOP(10) nombreContacto
FROM Clientes INNER JOIN Pedidos ON Clientes.idCliente = Pedidos.idCliente
ORDER BY cargo DESC;

-- consulta 8
SELECT idProvedor, nombreCategoria, SUM(precioUnitario) totalGanancias
FROM Productos INNER JOIN Categorias ON Productos.idCategoria = Categorias.idCategoria
GROUP BY idProvedor, nombreCategoria
ORDER BY idProvedor;

-- consulta 9
SELECT TOP(1) idProvedor, COUNT(descontinuado) AS numDescontinuados
FROM Productos
WHERE descontinuado = 1
GROUP BY idProvedor
ORDER BY numDescontinuados DESC;

--consulta 10
SET LANGUAGE Spanish;

SELECT DATENAME(YYYY,fechaPedido) Año, DATENAME(MM,fechaPedido) Mes, COUNT(Pedidos.idPedido) NúmeroDePedidos, SUM(precioUnitario) Total
FROM Pedidos INNER JOIN DetallesPedido ON Pedidos.idPedido = DetallesPedido.idPedido
GROUP BY DATENAME(YYYY,fechaPedido), DATENAME(MM,fechaPedido)
ORDER BY Año, Mes;
