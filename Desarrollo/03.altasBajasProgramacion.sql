--ALTA Y BAJA LOGICA DEL SERVICIOS -  1 ACTIVO - 0 INACTIVO
CREATE PROCEDURE bajaServicio
	(@id int)
AS
BEGIN
	IF (SELECT activo FROM Servicio WHERE idServicio = @id) = 1
		BEGIN
			UPDATE Servicio
			SET activo = 0
			WHERE idServicio = @id
			PRINT 'Servicio dado de Baja'
		END
	ELSE
		BEGIN
			UPDATE Servicio
			SET activo = 1
			WHERE idServicio = @id
			PRINT 'Servicio dado de Alta'
		END
END
GO
--ALTA Y BAJA LOGICA DEL PROFECIONAL - 1 ACTIVO - 0 INACTIVO

CREATE PROCEDURE bajaProfecional
	(@id int)
AS
BEGIN
	IF (SELECT activo FROM Profecional WHERE idProfecional = @id) = 1
		BEGIN
			UPDATE Profecional
			SET activo = 0
			WHERE idProfecional = @id
			PRINT 'Profecional dado de Baja'
		END
	ELSE
		BEGIN
			UPDATE Profecional
			SET activo = 1
			WHERE idProfecional = @id
			PRINT 'Profecional dado de Alta'
		END
END