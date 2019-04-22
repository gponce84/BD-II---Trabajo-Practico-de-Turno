---ABM PACIENTE
GO
CREATE TABLE Paciente(
idPaciente int not null identity(1,1),
nombre varchar (50),
apellido varchar (50),
direccion varchar (50),
telefono varchar (50),
email varchar (50),
dni varchar (50)
)