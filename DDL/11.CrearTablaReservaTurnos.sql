CREATE TABLE reservaTurnos(
id_turno int identity(1,1) not null,
id_usuario varchar(50),
id_paciente int,
id_servicio int,
fecha datetime,
hora int,
activo bit
)