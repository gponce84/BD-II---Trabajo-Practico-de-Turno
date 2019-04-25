--ALTA DE SERVICIO
CREATE PROCEDURE altaServicio
	(@nombre varchar (50)
	)
AS
BEGIN
	INSERT INTO Servicio (descripcion, activo) 
	VALUES (@nombre,1)
	PRINT 'Se dio de alta correctamente el Servicio'+' '+@nombre
END
GO

--ALTA DE PROFESIONAL
CREATE PROCEDURE altaProfesional
	(@nombre varchar(50),
	 @apellido varchar (50),
	 @direccion varchar(50),
	 @telefono varchar(50),
	 @email varchar(50)
	)
AS
BEGIN
	INSERT INTO Profesional (nombre,apellido,direccion,telefono,email,activo)
	VALUES (@nombre,@apellido,@direccion,@telefono,@email,1)
	PRINT 'Se dio de alta correctamente el Profesional'+' '+@nombre+' '+@apellido
END

GO
--ALTA DE PACIENTES
CREATE PROCEDURE altaPaciente
	(@nombre varchar (50),
	 @apellido varchar (50),
	 @direccion varchar (50),
	 @telefono varchar (50),
	 @email varchar (50),
	 @dni varchar (50)
	)
AS
BEGIN
	INSERT INTO Paciente (nombre,apellido,direccion,telefono,email,dni)
	values (@nombre,@apellido,@direccion,@telefono,@email,@dni)
	PRINT 'Paciente Dado de alta'
END
GO

--ALTA HORARIOS RECURRENTE
CREATE PROCEDURE altaHorariosRecurrentes
	(@esServicio bit,
	 @esProfesional bit,
	 @turno  varchar(4),
	 @fechaHorarioInicio datetime,
	 @fechaHorarioFin datetime,
	 @recurrencia varchar(10)
	)
AS
BEGIN
	INSERT INTO HorariosDisponibles (esServicio,esProfesional,turno,fechaHorarioInicio,fechaHorarioFin,recurrencia)
	values(@esServicio,@esProfesional,@turno,@fechaHorarioInicio,@fechaHorarioFin,@recurrencia)
	IF (@esServicio = 1 AND @recurrencia = 'BAJA')
	BEGIN
		PRINT 'Se ha insertado correctamente Horarios Disponible Del Servicio'
	END
	IF (@esProfesional = 1 AND @recurrencia = 'BAJA')
	BEGIN
		PRINT 'Se ha insertado correctamente Horarios Disponible Del Profesional'
	END
	IF (@esServicio = 1 AND @recurrencia = 'ALTA')
	BEGIN
		PRINT 'Se ha insertado correctamente Horarios Disponible Del Servicio,  Recurrencial' +' '+@recurrencia
	END
	IF (@esProfesional = 1 AND @recurrencia = 'ALTA')
	BEGIN
		PRINT 'Se ha insertado correctamente Horarios Disponible Del Profesional, Recurrencial' +' '+@recurrencia
	END
END
