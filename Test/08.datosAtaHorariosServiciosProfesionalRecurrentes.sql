------ALTA  DE HORARIOS Y RECURRENCIAS---------
GO
DECLARE @esServicio bit,
		@esProfesional bit,
		@turno  varchar(4),
		@fechaHorarioInicio datetime,
		@fechaHorarioFin datetime,
		@recurrencia varchar(10)
		
EXEC altaHorariosRecurrentes 
		@esServicio = 1, 	@esProfesional = 0, @turno = 'M', @fechaHorarioInicio = '06:00:00', 
		@fechaHorarioFin = '08:00:00', @recurrencia = 'BAJA'
EXEC altaHorariosRecurrentes 
		@esServicio = 1, 	@esProfesional = 0, @turno = 'M', @fechaHorarioInicio = '12:00:00', 
		@fechaHorarioFin = '15:00:00', @recurrencia = 'ALTA'
EXEC altaHorariosRecurrentes 			
		@esServicio = 0, 	@esProfesional = 1, @turno = 'M', @fechaHorarioInicio = '03:00:00', 
		@fechaHorarioFin = '08:00:00', @recurrencia = 'BAJA'
EXEC altaHorariosRecurrentes 			
		@esServicio = 0, 	@esProfesional = 1, @turno = 'M', @fechaHorarioInicio = '14:00:00', 
		@fechaHorarioFin = '18:00:00', @recurrencia = 'ALTA'
