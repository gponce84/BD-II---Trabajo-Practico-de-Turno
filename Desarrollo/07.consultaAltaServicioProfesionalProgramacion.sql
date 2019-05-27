--CONSULTA SERVICIO
CREATE PROCEDURE sp_consultaServicio
	(@id int)
AS
BEGIN
	SELECT * FROM Servicio WHERE idServicio = @id
END
GO

--CONSULTA PROFESIONAL

CREATE PROCEDURE sp_consultaProfesional
	(@id int)
AS
BEGIN
	SELECT * FROM Profesional WHERE idProfesional = @id
END
GO