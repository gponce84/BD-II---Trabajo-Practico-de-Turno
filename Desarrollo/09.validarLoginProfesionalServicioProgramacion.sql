--f) Validar login a profesional/servicio [id_usuario varchar(50), hash_password varchar(50)]
CREATE procedure pd_LoginProfesionalServicio
	(@id_usuario varchar(50),
	 @hash_password varchar(50)
	)
as
begin

	IF exists(select * from usuarios where username = @id_usuario and pass=@hash_password and esProfesional = 1)
		begin
		 Print 'Login Exitoso'
		end

	ELSE IF  exists(select * from usuarios where username<>@id_usuario or pass<>@hash_password and esProfesional = 1)
		begin
			Print 'Usuario o Contraseña incorrecta'
		end
end