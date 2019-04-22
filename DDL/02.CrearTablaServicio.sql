---ABM SERVICIO
CREATE TABLE Servicio(
idServicio int not null identity(1,1),
descripcion varchar(50),
activo bit --1 activo 0 inactivo
)