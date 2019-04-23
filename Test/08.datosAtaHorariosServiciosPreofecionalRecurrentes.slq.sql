------ALTA  DE HORARIOS Y RECURRENCIAS---------
GO
DECLARE @esServicio bit,
		@esProfecional bit,
		@turno  varchar(4),
		@fechaHorarioInicio datetime,
		@fechaHorarioFin datetime,
		@recurrencia varchar(10)
		
EXEC altaHorariosRecurrentes 
		@esServicio = 1, 	@esProfecional = 0, @turno = 'M', @fechaHorarioInicio = '06:00:00', 
		@fechaHorarioFin = '08:00:00', @recurrencia = 'BAJA'
EXEC altaHorariosRecurrentes 
		@esServicio = 1, 	@esProfecional = 0, @turno = 'M', @fechaHorarioInicio = '12:00:00', 
		@fechaHorarioFin = '15:00:00', @recurrencia = 'ALTA'
EXEC altaHorariosRecurrentes 			
		@esServicio = 0, 	@esProfecional = 1, @turno = 'M', @fechaHorarioInicio = '03:00:00', 
		@fechaHorarioFin = '08:00:00', @recurrencia = 'BAJA'
EXEC altaHorariosRecurrentes 			
		@esServicio = 0, 	@esProfecional = 1, @turno = 'M', @fechaHorarioInicio = '14:00:00', 
		@fechaHorarioFin = '18:00:00', @recurrencia = 'ALTA'