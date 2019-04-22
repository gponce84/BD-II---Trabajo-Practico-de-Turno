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
CREATE PROCEDURE modificacionProfecional
	(@id int,
	 @nuevo_nombre varchar(50),
	 @nuevo_apellido varchar (50),
	 @nueva_direccion varchar(50),
	 @nuevo_telefono varchar(50),
	 @nuevo_email varchar(50)
	)
AS
BEGIN
	UPDATE Profecional 
	SET nombre = ISNULL(@nuevo_nombre, Profecional.nombre), 
		apellido = ISNULL(@nuevo_apellido, Profecional.apellido),
		direccion = ISNULL(@nueva_direccion, Profecional.direccion), 
		email= ISNULL(@nuevo_email, Profecional.email)
	WHERE idProfecional = @id
	PRINT 'Se modificio correctamente el Profecional'
END