------ ALTAS  DE DATOS PARA PROFECIONAL---------
DECLARE @nombre varchar(50),
		@apellido varchar (50),
		@direccion varchar(50),
		@telefono varchar(50),
		@email varchar(50)
		
exec altaProfecional @nombre= 'Gerardo',@apellido = 'Ponce',@direccion='Dorrego 4433',@telefono = '1234567',@email = 'gponce@gmail.com'
exec altaProfecional @nombre= 'German',@apellido = 'Garcia',@direccion='Miguel Cane 2211',@telefono = '2345677',@email = 'ggarcia@gmail.com'
exec altaProfecional @nombre= 'Horacio',@apellido = 'Ponce',@direccion='Colombres 2312',@telefono = '234567',@email = 'hponce@gmail.com'
exec altaProfecional @nombre= 'Graciela',@apellido = 'Distefano',@direccion='Corrientes 3321',@telefono = '23459706',@email = 'gdistefano@gmail.com'
exec altaProfecional @nombre= 'Daniela',@apellido = 'Correa',@direccion='Av. Sucre 216',@telefono = '12349292',@email = 'dcorrea@gmail.com'
exec altaProfecional @nombre= 'Rocio',@apellido = 'Stewer',@direccion='Santa Fe 543',@telefono = '1234908',@email = 'rstewer@gmail.com'
exec altaProfecional @nombre= 'Roman',@apellido = 'Petters',@direccion='Ocampo 231',@telefono = '98798686',@email = 'rptters@gmail.com'
