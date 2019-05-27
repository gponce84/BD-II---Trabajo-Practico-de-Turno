--j) Cancelación lógica Turnos [id_turno int]
CREATE PROCEDURE sp_bajaLogicaTurnos
	(@id_turno int
	)
AS
BEGIN
	Declare @activo bit
	select @activo= activo from ReservaTurnos where id_turno=@id_turno
	IF  (@activo = 1)
		BEGIN
			UPDATE ReservaTurnos
			SET activo = 0
			WHERE id_turno = @id_turno
			PRINT 'Se ha dado de baja la Reserva de turno'
		END
	ELSE
		BEGIN
			UPDATE reservaTurnos
			SET activo = 1
			WHERE id_turno = @id_turno
			PRINT 'Se ha dado de alta la Reserva'
		END
END