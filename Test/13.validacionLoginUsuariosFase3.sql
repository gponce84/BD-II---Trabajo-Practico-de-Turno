
insert into usuarios (idUsuario,username,pass,esProfesional)
values (1,'gponce','1234',0)
insert into usuarios (idUsuario,username,pass,esProfesional)
values (2,'ggarcia','1234',1)

GO
EXEC pd_LoginClientePaciente 'gponce','1234'

GO
EXEC pd_LoginProfesionalServicio 'ggarcia','1234'