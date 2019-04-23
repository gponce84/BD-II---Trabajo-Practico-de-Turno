------MODIFICACION DE PROFECIONAL  --------
go
DECLARE @id int,
		@nuevo_nombre varchar(50),
		@nuevo_apellido varchar (50),
		@nueva_direccion varchar(50),
		@nuevo_telefono varchar(50),
		@nuevo_email varchar(50)

EXEC modificacionProfecional @id = 2,@nuevo_nombre= null, @nuevo_apellido = null,
		@nueva_direccion = NULL ,
		@nuevo_telefono = NULL,
		@nuevo_email = 'nuevo@email.com'
GO