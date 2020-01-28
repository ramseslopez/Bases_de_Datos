-- nombre y numero de mesa de los clientes que pagaron en efectivo
SELECT DISTINCT CONCAT(nombreC, ' ', paternoC, ' ', maternoC) nombreCompleto, numMesa
FROM Cliente INNER JOIN Pago ON Cliente.idPago = Pago.idPago
             INNER JOIN Ticket ON Pago.idPago = Ticket.idPago
             INNER JOIN Mesa ON Ticket.folio = Mesa.folio
WHERE esEfectivo = 'Si';
GO

-- Los ticket donde se muestre que el cliente consumio bistec o pollo
SELECT DISTINCT folio
FROM Cliente INNER JOIN Pago ON Cliente.idPago = Pago.idPago
             INNER JOIN Ticket ON Pago.idPago = Ticket.idPago
             INNER JOIN Taqueria ON Ticket.RFC = Taqueria.RFC
             INNER JOIN Menu ON Taqueria.RFC = Menu.RFC
             INNER JOIN Ingrediente ON Menu.idMenu = Ingrediente.idMenu
WHERE nombreI = 'bistec' OR nombreI = 'pollo';
GO

-- los empleados donde la primer letra de su apellido paterno es P,E o T, 
-- y viven en Coyoacan
SELECT CURP, CONCAT(nombreE, ' ', paternoE, ' ', maternoE) nombreCompleto
FROM Empleado
WHERE paternoE LIKE '[P,E,T]%' AND alcaldiaE = 'Coyoacan';
GO

-- numero total de taqueros, meseros y cajeros
SELECT numMeseros, numTaqueros, numCajeros 
FROM (SELECT COUNT(Empleado.CURP) numMeseros, Taqueria.RFC RFC
      FROM Empleado INNER JOIN Rol ON Empleado.CURP = Rol.CURP
                    INNER JOIN Taqueria On Rol.RFC = Taqueria.RFC
      WHERE esMesero = 'Si'
      GROUP BY Taqueria.RFC) A 
INNER JOIN (SELECT COUNT(Empleado.CURP) numCajeros, Taqueria.RFC RFC
            FROM Empleado INNER JOIN Rol ON Empleado.CURP = Rol.CURP
                          INNER JOIN Taqueria On Rol.RFC = Taqueria.RFC
            WHERE esCajero = 'Si'
            GROUP BY Taqueria.RFC) B ON A.RFC = B.RFC
INNER JOIN (SELECT COUNT(Empleado.CURP) numTaqueros, Taqueria.RFC RFC
            FROM Empleado INNER JOIN Rol ON Empleado.CURP = Rol.CURP
                          INNER JOIN Taqueria On Rol.RFC = Taqueria.RFC
            WHERE esTaquero = 'Si'
            GROUP BY Taqueria.RFC) C ON B.RFC = C.RFC;
GO

-- Todos los productos comprados durante ultimo trimestre y su fecha de caducidad es en marzo del 2020
SELECT tipo
FROM Producto INNER JOIN Inventario ON Producto.idInventario = Inventario.idInventario
WHERE DATEPART(qq, fechaCompra) = 4 AND YEAR(fechaCaducidad) = 2020 AND DATEPART(mm, fechaCaducidad) = 3;
GO

-- El total de la compra de los productos por inventario
SELECT Inventario.idInventario, SUM(precio)
FROM Producto INNER JOIN Inventario ON Producto.idInventario = Inventario.idInventario
GROUP BY Inventario.idInventario;
GO

-- El ganacia de las ventas hechas
SELECT ((SUM(precio)) - (SUM(monto))) ganancia
FROM Pago INNER JOIN Ticket ON Pago.idPago = Ticket.idPago
          INNER JOIN Taqueria ON Ticket.RFC = Taqueria.RFC
          INNER JOIN Menu ON Taqueria.RFC = Menu.RFC
          INNER JOIN Ingrediente ON Menu.idMenu = Ingrediente.idMenu
          INNER JOIN ser ON Ingrediente.nombreI = ser.nombreI
          INNER JOIN Producto ON ser.idProducto = Producto.idProducto;
GO

-- Los cientes que son taqueros de corazon y que aun no pueden realizar una compra con sus puntos
SELECT DISTINCT idCliente ID, CONCAT(nombreC, ' ', paternoC, ' ', maternoC) nombreCliente
FROM Cliente INNER JOIN Pago ON Cliente.idPago = Pago.idPago
             INNER JOIN Ticket ON Pago.idPago = Ticket.idPago
             INNER JOIN Taqueria ON Ticket.RFC = Taqueria.RFC
             INNER JOIN Menu ON Taqueria.RFC = Menu.RFC
             INNER JOIN Ingrediente ON Menu.idMenu = Ingrediente.idMenu
             INNER JOIN ser ON Ingrediente.nombreI = ser.nombreI
             INNER JOIN Producto ON ser.idProducto = Producto.idProducto
WHERE esTaqueroC = 'Si' AND puntos < precio;
GO

-- Empleados que comanezaron a trabajar en un dia 05
SELECT Empleado.CURP, CONCAT(nombreE, ' ', paternoE,  ' ', maternoE) nombreCompleto
FROM Empleado INNER JOIN Rol ON Empleado.CURP = Rol.CURP
WHERE DATEPART(dd, fechaInicio) = 5;
GO

-- Taqueros que dejaran de trabajar en el mes de julio
SELECT Empleado.CURP, CONCAT(nombreE, ' ', paternoE,  ' ', maternoE) nombreCompleto, fechaFin
FROM Empleado INNER JOIN Rol ON Empleado.CURP = Rol.CURP
WHERE esTaquero = 'Si' AND DATEPART(mm, fechaFin) = 7;
GO

-- CLientes que consimieron la salsa más picante y pagaron con ambos metodos de pago
SELECT idCliente, CONCAT(nombreC, ' ', paternoC, ' ', maternoC) nombreCompleto
FROM Cliente INNER JOIN Pago ON Cliente.idPago = Pago.idPago
             INNER JOIN Ticket ON Pago.idPago = Ticket.idPago
             INNER JOIN Taqueria ON Ticket.RFC = Taqueria.RFC
             INNER JOIN Salsa ON Taqueria.RFC = Salsa.RFC
WHERE nivelPicor = '5' AND esTarjeta = 'Si' AND esEfectivo = 'Si';
GO

-- El promedio de todas las ventas con tajeta hechas a comensales
SELECT AVG(monto) promedio
FROM Pago INNER JOIN Ticket ON Pago.idPago = Ticket.idPago
          INNER JOIN Comensal ON Ticket.folio = Comensal.folio
WHERE esTarjeta = 'Si';
GO

-- Prodcutos adquiridos que costaron menos de 200 y se pagaron con tarjeta
SELECT DISTINCT tipo
FROM Pago INNER JOIN Ticket ON Pago.idPago = Ticket.idPago
          INNER JOIN Taqueria ON Ticket.RFC = Taqueria.RFC
          INNER JOIN Menu ON Taqueria.RFC = Menu.RFC
          INNER JOIN Ingrediente ON Menu.idMenu = Ingrediente.idMenu
          INNER JOIN ser ON Ingrediente.nombreI = ser.nombreI
          INNER JOIN Producto ON ser.idProducto = Producto.idProducto
WHERE monto < 200 AND esTarjeta = 'Si';
GO

-- El proveedor del producto más caro obtenido por la taqueria
SELECT Proveedor.RFCp, nombreP
FROM Proveedor INNER JOIN Producto ON Proveedor.RFCp = Producto.RFCp
WHERE precio IN (SELECT MAX(precio)
				 FROM Producto);
GO

-- La cantidad de ingredientes usados en la taquería por tipo
SELECT tipo, COUNT(Ingrediente.nombreI) cantidad
FROM Ingrediente INNER JOIN ser ON Ingrediente.nombreI = ser.nombreI
                 INNER JOIN Producto ON ser.idProducto = Producto.idProducto
GROUP BY tipo;
GO
