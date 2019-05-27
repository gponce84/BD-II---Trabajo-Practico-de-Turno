--i) Reservar un turno [id_usuario varchar(50), id_paciente int, id_servicio int, fecha datetime, hora int]
CREATE PROCEDURE sp_reservaTurnos
	(@id_usuario varchar(50), 
	 @id_paciente int, 
	 @id_servicio int, 
	 @fecha datetime, 
	 @hora int
	)
AS
BEGIN
	IF EXISTS (select * from HorariosDisponibles where idServicioProfesional = @id_servicio 
	and esProfesional = 0 
	and DATEDIFF(DAY,fechaHorarioInicio,@fecha) = 0
	and DATEPART(HH,fechaHorarioInicio) = @hora
	)
	BEGIN
	 INSERT INTO reservaTurnos(id_usuario,id_paciente,id_servicio,fecha,hora,activo)
	 values (@id_usuario,@id_paciente,@id_servicio,@fecha,@hora,1)
	END
	ELSE 
	BEGIN
		PRINT 'El turno solicitado no esta Disponible'
	END
	
END
