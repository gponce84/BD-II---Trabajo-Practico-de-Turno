--e) Validar login a un cliente/paciente [id_usuario varchar(50), hash_password varchar(50)]

CREATE PROCEDURE pd_LoginClientePaciente
	(@id_usuario varchar(50),
	 @hash_password varchar(50)
	)
AS
BEGIN

	IF exists(SELECT * FROM usuarios WHERE username = @id_usuario and pass=@hash_password and esProfesional = 0)
		BEGIN
		 PRINT 'Login Exitoso'
		END

	ELSE IF  exists(SELECT * FROM usuarios WHERE username<>@id_usuario or pass<>@hash_password and esProfesional = 0)
		BEGIN
			PRINT 'Usuario o Contraseña incorrecta'
		END
END
