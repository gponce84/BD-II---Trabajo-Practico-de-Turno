--h) Consultar el próximo turno disponible de un servicio [id_servicio int]
ALTER PROCEDURE pd_proximoTurnoServicio
	(@id_servicio int
	)
AS
BEGIN
	DECLARE @cont int
	select * from HorariosDisponibles where idServicioProfesional = @id_servicio 
	and esProfesional = 0 
	and DATEDIFF(dd,fechaHorarioInicio,GETDATE()) = 0
	and DATEDIFF(hh,GETDATE(),fechaHorarioInicio) > 0
END