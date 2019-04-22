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

--ALTA DE PROFECIONAL
CREATE PROCEDURE altaProfecional
	(@nombre varchar(50),
	 @apellido varchar (50),
	 @direccion varchar(50),
	 @telefono varchar(50),
	 @email varchar(50)
	)
AS
BEGIN
	INSERT INTO Profecional (nombre,apellido,direccion,telefono,email,activo)
	VALUES (@nombre,@apellido,@direccion,@telefono,@email,1)
	PRINT 'Se dio de alta correctamente el Profecional'+' '+@nombre+' '+@apellido
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
	 @esProfecional bit,
	 @turno  varchar(4),
	 @fechaHorarioInicio datetime,
	 @fechaHorarioFin datetime,
	 @recurrencia varchar(10)
	)
AS
BEGIN
	INSERT INTO HorariosDisponibles (esServicio,esProfecional,turno,fechaHorarioInicio,fechaHorarioFin,recurrencia)
	values(@esServicio,@esProfecional,@turno,@fechaHorarioInicio,@fechaHorarioFin,@recurrencia)
	IF (@esServicio = 1 AND @recurrencia = 'BAJA')
	BEGIN
		PRINT 'Se a insertado correctamente Horarios Disponible Del Servicio'
	END
	IF (@esProfecional = 1 AND @recurrencia = 'BAJA')
	BEGIN
		PRINT 'Se a insertado correctamente Horarios Disponible Del Profecional'
	END
	IF (@esServicio = 1 AND @recurrencia = 'ALTA')
	BEGIN
		PRINT 'Se a insertado correctamente Horarios Disponible Del Servicio,  Recurrencial' +' '+@recurrencia
	END
	IF (@esProfecional = 1 AND @recurrencia = 'ALTA')
	BEGIN
		PRINT 'Se a insertado correctamente Horarios Disponible Del Profecional, Recurrencial' +' '+@recurrencia
	END
END