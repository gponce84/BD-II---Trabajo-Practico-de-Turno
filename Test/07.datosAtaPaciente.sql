------DATOS DE CARGA PACIENTE---------
DECLARE @nombre varchar (50),
		@apellido varchar (50),
		@direccion varchar (50),
		@telefono varchar (50),
		@email varchar (50),
		@dni varchar (50)
		
exec altaPaciente 
	@nombre= 'Gerardo',@apellido = 'Ponce',@direccion='Dorrego 4433',@telefono = '1234567',@email = 'gponce@gmail.com', @dni= '30.677.727'
