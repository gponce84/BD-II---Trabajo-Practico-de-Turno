---ABM Horarios Disponibles Servicio y Profecional
CREATE TABLE HorariosDisponibles(
idServicioProfecional int not null identity (1,1),
esServicio bit,
esProfecional bit,
turno varchar(4),
fechaHorarioInicio time,
fechaHorarioFin	time,
recurrencia varchar(10)
)