GUÍA PARA EJECUTAR EN LINUX/DEBIAN

Como primer paso nos situamos en el directorio donde se encuentra el script.sql

	$ sql/DDL/script.sql

Ingresamos al contenedor para crear un directorio scripts/ y luego salimos

$ sudo docker exec -it <nombreContedenor> "bash"

	# mkdir scripts

Copiamos el archivo .sql en el contenedor con el siguiente comando:

	$ sudo docker cp script.sql <nombreContedenor>:/scripts

Ingresamos de nuevo al contenedor

	$ sudo docker exec -it <nombreContedenor> "bash"

Utilizamos el siguiente comando:

	# /opt/mssql-tools/bin/sqlcmd -S localhost -U  SA -P "<tuContraseña>" -i /scripts/script.sql -o log.txt

Después el siguiente comando:

	# cat log.txt


Para finalizar, abrir DBeaver y conectar con SQL-Server.
Dar click en la sección 'SQL Server - master' y obsérvese que se encuentra la base
de datos "MovilidadCDMX".

Dar click en "MovilidadCDMX", despúes en "Schemoa", luego "dbo" y finalmente "Tables"
para visualizar las tablas que componen la base de datos.
