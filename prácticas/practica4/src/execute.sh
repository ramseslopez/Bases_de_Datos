#!/bin/bash

sudo docker exec -it sql1 "bash"

/opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P "SomosArisTemo<3"

CREATE DATABASE lab_db:;

GO

USE lab_db;

GO

CREATE LOGIN log_lab_p4 WITH PASSWORD = 'aRRib4@@';

GO

CREATE USER lab_p4 FOR LOGIN log_lab_p4;

G0

EXIT

/opt/mssql-tools/bin/sqlcmd -S localhost -U log_lab_p4 -P "aRRIb4@@"

USE lab_db;

GO

SELECT CURRENT_USER;

GO

SELECT DB_NAME() AS [Current Database];

GO





