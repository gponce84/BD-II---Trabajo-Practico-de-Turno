--g) Consultar si un servicio está disponible en una fecha determinada [fecha datetime, hora int, id_servicio int]
CREATE PROCEDURE sp_disponibilidadServicio
	(@fecha datetime, 
	 @hora int, 
	 @id_servicio int
	)
AS
BEGIN
	select * from HorariosDisponibles where idServicioProfesional = @id_servicio 
	and esProfesional = 0 
	and DATEDIFF(DAY,fechaHorarioInicio,@fecha) = 0
	and DATEPART(HH,fechaHorarioInicio) = @hora
END