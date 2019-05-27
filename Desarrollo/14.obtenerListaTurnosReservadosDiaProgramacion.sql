--k) Obtener la lista de turnos reservados del día, a pedido de un profesional/servicio 
--[id_profesional int, es_profesional bit, fecha datetime]
CREATE PROCEDURE sp_listaTurnosReservados
	(@id_profesional int,
	 @es_profesional bit,
	 @fecha datetime
	)
AS
BEGIN
	if(@es_profesional = 0 and )
	select * from reservaTurnos where DATEDIFF(DD,fecha,@fecha) = 0
END
