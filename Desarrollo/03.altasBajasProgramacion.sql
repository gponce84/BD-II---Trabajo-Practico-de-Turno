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
--ALTA Y BAJA LOGICA DEL PROFESIONAL - 1 ACTIVO - 0 INACTIVO

CREATE PROCEDURE bajaProfesional
	(@id int)
AS
BEGIN
	IF (SELECT activo FROM Profesional WHERE idProfesional = @id) = 1
		BEGIN
			UPDATE Profesional
			SET activo = 0
			WHERE idProfesional = @id
			PRINT 'Profesional dado de Baja'
		END
	ELSE
		BEGIN
			UPDATE Profesional
			SET activo = 1
			WHERE idProfesional = @id
			PRINT 'Profesional dado de Alta'
		END
END
