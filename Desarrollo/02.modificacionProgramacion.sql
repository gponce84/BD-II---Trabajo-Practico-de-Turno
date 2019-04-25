--UPDATE SERVICIOS
GO
CREATE PROCEDURE modificacionServicio
	(@id int,
	 @nueva_descripcion varchar(50)
	)
AS
BEGIN
	UPDATE Servicio
	SET descripcion = @nueva_descripcion 
	WHERE idServicio= @id
	PRINT 'Se modificio correctamente el Servicio'
END
GO

--UPDATE PROFECIONAL
GO
CREATE PROCEDURE modificacionProfesional
	(@id int,
	 @nuevo_nombre varchar(50),
	 @nuevo_apellido varchar (50),
	 @nueva_direccion varchar(50),
	 @nuevo_telefono varchar(50),
	 @nuevo_email varchar(50)
	)
AS
BEGIN
	UPDATE Profesional 
	SET nombre = ISNULL(@nuevo_nombre, Profesional.nombre), 
		apellido = ISNULL(@nuevo_apellido, Profesional.apellido),
		direccion = ISNULL(@nueva_direccion, Profesional.direccion), 
		email= ISNULL(@nuevo_email, Profesional.email)
	WHERE idProfesional = @id
	PRINT 'Se modificio correctamente el Profesional'
END
