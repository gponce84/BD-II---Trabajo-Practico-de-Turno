---------------------------------------
------BAJA ALTA LOGICA SERVICIO--------
DECLARE @id int,
		@nombre varchar (50)
EXEC bajaServicio @id= 2

select * from Servicio
