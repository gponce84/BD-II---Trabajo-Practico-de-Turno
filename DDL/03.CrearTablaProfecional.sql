---ABM PROFECIONAL
CREATE TABLE Profesional(
idProfesional int not null identity(1,1),
nombre varchar(50),
apellido varchar (50),
direccion varchar(50),
telefono varchar(50),
email varchar(50),
activo bit --1 activo 0 inactivo
)
