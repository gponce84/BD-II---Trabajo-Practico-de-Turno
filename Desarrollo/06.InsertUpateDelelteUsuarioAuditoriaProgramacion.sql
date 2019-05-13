GO
CREATE TRIGGER auditoria
ON usuario FOR insert, update, delete
AS
BEGIN 
	DECLARE @i int
	DECLARE @u int
	DECLARE @d int
	DECLARE @id int
	DECLARE @cantidad int
	DECLARE @nropagina int
	SELECT @i = COUNT(*) from inserted
	SELECT @d = COUNT (*) from deleted
	--INSERT
	IF (@i > 0 and @d = 0)
	BEGIN
		DECLARE cr_insertar CURSOR FOR
		SELECT id , cantidad_por_pagina, nro_pagina from inserted
		OPEN cr_insertar
		FETCH cr_insertar INTO @id,@cantidad,@nropagina
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			insert into actividad (id, cantidad_por_pagina, nro_pagina, tipo_actividad)
			values (@id, @cantidad, @nropagina, 'I')
			FETCH cr_insertar INTO @id, @cantidad,@nropagina
		END
	CLOSE cr_insertar
	DEALLOCATE cr_insertar
	END
	--DELETE
	IF (@i = 0 and @d > 0)
	BEGIN
		DECLARE cr_eliminar CURSOR FOR
		SELECT id , cantidad_por_pagina, nro_pagina from deleted
		OPEN cr_eliminar
		FETCH cr_eliminar INTO @id,@cantidad,@nropagina
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			insert into actividad (id, cantidad_por_pagina, nro_pagina, tipo_actividad)
			values (@id, @cantidad, @nropagina, 'D')
			FETCH cr_eliminar INTO @id, @cantidad,@nropagina
		END
	CLOSE cr_eliminar
	DEALLOCATE cr_eliminar
	END
	--UPDATE
	IF (@i = @d )
	BEGIN
		DECLARE cr_update CURSOR FOR
		SELECT id , cantidad_por_pagina, nro_pagina from inserted
		OPEN cr_update
		FETCH cr_update INTO @id,@cantidad,@nropagina
		WHILE (@@FETCH_STATUS = 0)
		BEGIN
			insert into actividad (id, cantidad_por_pagina, nro_pagina, tipo_actividad)
			values (@id, @cantidad, @nropagina, 'U')
			FETCH cr_update INTO @id, @cantidad,@nropagina
		END
	CLOSE cr_update
	DEALLOCATE cr_update
	END
END