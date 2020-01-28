USE Trabajo;

-- Consulta a --
SELECT CONCAT(nombre, ' ', paterno, ' ', materno) AS nombreCompleto, ciudadE
FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
              INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
WHERE razonSocial = 'PEMEX';



-- Consulta b --
SELECT Empleado.CURP, CONCAT(nombre, ' ', paterno, ' ', materno) AS nombreCompleto
FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
              INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
WHERE ciudadE <> ciudad;



-- Conuslta c --
SELECT DISTINCT Empleado.CURP, CONCAT(nombre, ' ', paterno, ' ', materno) AS nombreCompleto, (salarioQuincenal * 2) saldoMensual
FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
              INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
              INNER JOIN Dirigir ON Empresa.RFC = Dirigir.RFC
WHERE genero = 'F';



-- Consulta d --
SELECT Empleado.CURP,CONCAT(nombre, ' ', paterno, ' ', materno) AS nombreCompleto, nacimiento,
       CONCAT(calleE, ' ', numeroE, ' ', ciudadE, ' ', cpE) AS direccionEmpleado,
       Empresa.RFC, razonSocial, CONCAT(calle, ' ', numero, ' ', ciudad, ' ', cp) AS direccionEmpresa
FROM Empleado INNER JOIN Dirigir ON Empleado.CURP = Dirigir.CURP
              INNER JOIN Empresa ON Dirigir.RFC = Empresa.RFC
WHERE YEAR(fechaInicioD)= 2018 AND DATEPART(qq,fechaInicioD) IN (2,4);



-- Consulta e --
SELECT A.CURP, CONCAT(A.nombre, ' ', A.paterno, ' ', A.materno) AS nombreCompleto
FROM Empleado AS A INNER JOIN Empleado AS B ON A.CURP = B.CURP
WHERE A.ciudadE = B.ciudadE AND A.calleE = B.calleE;



-- Consulta f --
SELECT RFC, nombre, AVG(salarioQuincenal) AS salarioPromedio
FROM (
      SELECT Empresa.RFC RFC, razonSocial nombre, Empleado. CURP, salarioQuincenal
      FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
                    INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
     ) AS A
GROUP BY RFC, nombre;



-- Consulta g --
SELECT DISTINCT Empleado.CURP, CONCAT(Empleado.nombre, ' ', paterno, ' ', materno) AS nombreCompleto
FROM Empleado INNER JOIN Colaborar ON Empleado.CURP = Colaborar.CURP
              INNER JOIN Proyecto ON Colaborar.numProy = Proyecto.numProy
              INNER JOIN Empresa ON Proyecto.RFC = Empresa.RFC
              INNER JOIN Trabajar ON Empresa.RFC <> Trabajar.RFC;



-- Consulta h --
SELECT Empresa.RFC, razonSocial, MAX(salarioQuincenal) AS saldoMaximo,
       MIN(salarioQuincenal) AS saldoMinimo, SUM(salarioQuincenal) AS total
FROM Trabajar INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
GROUP BY Empresa.RFC, razonSocial;



-- Consulta i --
SELECT Empleado.CURP, CONCAT(Empleado.nombre, ' ', paterno, ' ', materno) AS nombreCompleto,
       CONCAT(calleE, ' ', numeroE,  ' ', cpE, ' ', ciudadE) AS direccion, SUM(numHoras) AS horasTrabajadas
FROM Empleado INNER JOIN Colaborar ON Empleado.CURP = Colaborar.CURP
              INNER JOIN Proyecto ON Colaborar.numProy = Proyecto.numProy
GROUP BY Empleado.CURP, Empleado.nombre, paterno, materno, calleE, numeroE, cpE, ciudadE
HAVING COUNT(Proyecto.numProy) >= 2 AND SUM(numHoras) > 20;



-- Consulta j --
SELECT DISTINCT A.RFC, A.razonSocial, A.anio, A.trimestre, SUM(A.numHombres) AS numHombres, SUM(B.numMujeres) AS numMujeres
FROM (SELECT Empresa.RFC RFC, razonSocial, DATENAME(YYYY, YEAR(fechaIngreso)) AS anio, DATEPART(QQ,fechaIngreso) AS trimestre, COUNT(genero) AS numHombres
      FROM Empleado JOIN Trabajar ON Empleado.CURP = Trabajar.CURP INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
      WHERE genero = 'M'
      GROUP by Empresa.RFC, razonSocial, DATENAME(YYYY, YEAR(fechaIngreso)) , DATEPART(QQ,fechaIngreso)) AS A
      INNER JOIN
     (SELECT Empresa.RFC RFC, razonSocial, DATENAME(YYYY, YEAR(fechaIngreso)) AS anio, DATEPART(QQ,fechaIngreso) AS trimestre, COUNT(genero) AS numMujeres
      FROM Empleado JOIN Trabajar ON Empleado.CURP = Trabajar.CURP INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
      WHERE genero = 'F'
      GROUP by Empresa.RFC, razonSocial, DATENAME(YYYY, YEAR(fechaIngreso)) , DATEPART(QQ,fechaIngreso)) AS B ON A.RFC = B.RFC
GROUP BY A.RFC, A.razonSocial, A.anio, A.trimestre;



-- Consulta k --
SELECT CONCAT(nombre, ' ', paterno, ' ', materno) AS nombreCompleto
FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
              INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
WHERE salarioQuincenal IN (
                         SELECT saldoMaximo
                         FROM (
                               SELECT razonSocial, MAX(salarioQuincenal) AS saldoMaximo
                               FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
                               INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
                               GROUP BY razonSocial
                              ) AS A
                        );



-- Consulta l --
SELECT Empleado.CURP, CONCAT(nombre, ' ', paterno, ' ', materno) AS nombreCompleto
FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
              INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
WHERE salarioQuincenal > (
						SELECT AVG(salarioPromedio) AS salarioPromedio
						FROM (
							  SELECT RFC, nombre, AVG(salarioQuincenal) AS salarioPromedio
						      FROM (
                                    SELECT Empresa.RFC RFC, razonSocial nombre, Empleado. CURP, salarioQuincenal
                                    FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
                                                  INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
                                   ) AS A
                              GROUP BY RFC, nombre
      					     ) AS B
      					);



-- Consulta m --
SELECT Empleado.CURP, CONCAT(nombre, ' ', paterno, ' ', materno) AS nombreCompleto, nacimiento,
       CONCAT(calleE, ' ', numeroE, ' ', cpE, ' ', ciudadE) AS direccion, genero
FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
              INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
WHERE razonSocial IN (
                      SELECT nombre
                      FROM (
                            SELECT TOP (1) Empresa.RFC, razonSocial nombre, COUNT(Empleado.CURP) AS numEmpleados
                            FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
                                          INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
                            GROUP BY Empresa.RFC, razonSocial
                            ORDER BY numEmpleados ASC
                            ) AS A
                     );



-- Consulta n --
SELECT Proyecto.*
FROM Empleado INNER JOIN Dirigir ON Empleado.CURP = Dirigir.CURP
              INNER JOIN Empresa ON Dirigir.RFC = Empresa.RFC
              INNER JOIN Proyecto ON Empresa.RFC = Proyecto.RFC
              INNER JOIN Colaborar ON Proyecto.numProy = Colaborar.numProy;



-- Consulta o --
SELECT DISTINCT Empresa.RFC, razonSocial
FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
              INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
WHERE ciudadE IN (
		  SELECT DISTINCT ciudadE
                  FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
                                INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
                 );



-- Consulta p --
SELECT Empleado.CURP, CONCAT(Empleado.nombre, ' ', paterno, ' ', materno) AS nombreCompleto
FROM Empleado INNER JOIN Colaborar ON Empleado.CURP = Colaborar.CURP
              INNER JOIN Proyecto ON Colaborar.numProy = Proyecto.numProy
WHERE fechaFinC <> fechaFin;



-- Consulta q --
(SELECT Empleado.CURP, CONCAT(Empleado.nombre, ' ', paterno, ' ', materno) AS nombreCompleto,
        CONCAT(calleE, ' ', numeroE,  ' ', ciudadE, ' ', cpE) AS direccion, genero
 FROM Empleado)
EXCEPT
(SELECT Empleado.CURP, CONCAT(Empleado.nombre, ' ', paterno, ' ', materno) AS nombreCompleto,
        CONCAT(calleE, ' ', numeroE,  ' ', ciudadE, ' ', cpE) AS direccion, genero
 FROM Empleado INNER JOIN Colaborar ON Empleado.CURP = Colaborar.CURP
               INNER JOIN Proyecto ON Colaborar.numProy = Proyecto.numProy);



-- Consulta r --
SELECT RFC, compania, direccion
FROM (
      SELECT Empresa.RFC RFC, razonSocial compania, CONCAT(calle, ' ', numero, ' ', cp, ' ', ciudad) AS direccion, COUNT(Empleado.CURP) AS numEmpleados
      FROM Empleado INNER JOIN Trabajar ON Empleado.CURP = Trabajar.CURP
                    INNER JOIN Empresa ON Trabajar.RFC = Empresa.RFC
      WHERE ciudadE = ciudad
      GROUP BY Empresa.RFC, razonSocial, calle, numero, ciudad, cp
     ) AS A
WHERE numEmpleados >= 2;



-- Consulta s --
SELECT numProy, nombre, numHoras
FROM (
      SELECT TOP(1) Proyecto.numProy numProy, Proyecto.nombre nombre, COUNT(Empleado.CURP) AS numEmpleados, SUM(numHoras) AS numHoras
	  FROM Empleado INNER JOIN Colaborar ON Empleado.CURP = Colaborar.CURP
                    INNER JOIN Proyecto ON Colaborar.numProy = Proyecto.numProy
      GROUP BY Proyecto.numProy, Proyecto.nombre
      ORDER BY numEmpleados DESC
     ) AS A;



-- Consulta t --
SELECT Empleado.CURP, CONCAT(Empleado.nombre, ' ', paterno, ' ', materno) AS nombreCompleto
FROM Empleado INNER JOIN Colaborar ON Empleado.CURP = Colaborar.CURP
              INNER JOIN Proyecto ON Colaborar.numProy = Proyecto.numProy
WHERE (DAY(nacimiento) = DAY(fechaInicioC)) AND (MONTH(nacimiento) = MONTH(fechaInicioC));



-- Consulta u --
SELECT A.CURP, CONCAT(A.nombre, ' ', A.paterno, ' ', A.materno) AS nombre, COUNT(B.CURP) numEmpleados
FROM Empleado AS A INNER JOIN Empleado AS B ON A.CURP = B.CURP
GROUP BY A.CURP, A.nombre, A.paterno, A.materno;



-- Consulta v --
SELECT Empleado.CURP, CONCAT(nombre, ' ', paterno, ' ', materno) AS nombreCompleto
FROM Empleado INNER JOIN Dirigir ON Empleado.CURP = Dirigir.CURP
WHERE (YEAR(GETDATE()) - YEAR(nacimiento)) > 50;



-- Consulta w --
SELECT Empleado.CURP, CONCAT(Empleado.nombre, ' ', paterno, ' ', materno) AS nombreCompleto
	FROM Empleado
WHERE paterno LIKE '[A,D,G,J,L,P,O,R]%';



-- Consulta x --
SELECT SUM(numEmpleados) AS numEmpleados
FROM (
      SELECT Proyecto.nombre, fechaInicio, razonSocial, COUNT(Empleado.CURP) AS numEmpleados
      FROM Empleado INNER JOIN Colaborar ON Empleado.CURP = Colaborar.CURP
                    INNER JOIN Proyecto ON Colaborar.numProy = Proyecto.numProy
                    INNER JOIN Empresa ON Proyecto.RFC = Empresa.RFC
      WHERE MONTH(fechaInicio) = 12
      GROUP BY Proyecto.nombre, fechaInicio, razonSocial
     ) AS A;



-- Consulta y --
/* NO SE RESOLVIÓ */
