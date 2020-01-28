USE TaqueroMucho;
GO

-- Creacion de un disparador para verificar que el monto de pago no sea negativo
CREATE TRIGGER checkMontoPago ON Pago
AFTER INSERT, UPDATE AS
  BEGIN
      SET NOCOUNT ON;
      DECLARE @monto FLOAT;
      SELECT @monto = monto FROM Pago;
      IF @monto < 0 
      BEGIN 
        RAISERROR('No es posible hacer hacer pagos negativos', 16, 1);
        ROLLBACK TRANSACTION;
      END;
  END;
GO


-- Creacion de un dispatador para verificar que la fecha de contratacion no sea la misma
-- de la fecha de fin de contrato
CREATE TRIGGER checkFecha ON Rol
AFTER INSERT, UPDATE AS
  BEGIN 
    SET NOCOUNT ON;
    DECLARE @fechaI DATE; 
    DECLARE @fechaF DATE;
    SELECT @fechaI = fechaInicio FROM Rol;
    SELECT @fechaF = fechaFin FROM Rol;
    IF @fechaI = @fechaF
    BEGIN 
      RAISERROR('No es posible', 16, 1);
      ROLLBACK TRANSACTION;
    END;
  END;
  GO

-- Creacion de un disparador para checar la edad de los empleados
CREATE TRIGGER chechEdad ON Empleado
AFTER INSERT, UPDATE AS
  BEGIN 
    SET NOCOUNT ON;
    DECLARE @edad INT;
    SELECT @edad = ((YEAR(GETDATE())) - (YEAR(nacimiento))) FROM Empleado;
    IF @edad < 18 
    BEGIN
      RAISERROR('No se puede contratar a menores de edad', 16, 1);
      ROLLBACK TRANSACTION;
    END;
  END;
GO

-- Creacion de trigger para verificar la fecha de caducidad de los productos
CREATE TRIGGER checkCaducidad ON Producto
AFTER INSERT, UPDATE AS
  BEGIN
    SET NOCOUNT ON;
    DECLARE @fechaC DATE;
    SELECT @fechaC = fechaCaducidad FROM Producto;
    IF @fechaC = GETDATE()
    BEGIN
      RAISERROR('El producto esta a punto de caducar', 16, 1);
      ROLLBACK TRANSACTION;
    END;
  END;
GO
