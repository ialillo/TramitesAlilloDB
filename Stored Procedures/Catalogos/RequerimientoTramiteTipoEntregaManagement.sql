USE [TAL]
GO
/****** Object:  StoredProcedure [Catalogos].[RequerimientoTramiteTipoEntregaManagement]    Script Date: 21/07/2017 05:13:32 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [Catalogos].[RequerimientoTramiteTipoEntregaManagement]
	@opcion				INT = 3,
	@id					INT = 0,
	@nomTipoEntrega		CHAR(100) = '',
	@activo				BIT = 1
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Catalogos.RequerimientoTramiteTipoEntrega(nombreTipoEntrega)
		SELECT	@nomTipoEntrega
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Catalogos.RequerimientoTramiteTipoEntrega
		SET		activo = 0
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS
	IF @opcion = 3
	BEGIN
		SELECT	id AS Id, LTRIM(RTRIM(UPPER(nombreTipoEntrega))) AS NombreTipoTramite, activo AS Activo
		FROM	Catalogos.RequerimientoTramiteTipoEntrega
		WHERE	(id = @id OR @id = 0)
				AND (nombreTipoEntrega = @nomTipoEntrega OR @nomTipoEntrega = '')
				AND (activo = @activo OR @activo = 1)
		FOR XML RAW('RequerimientoTramiteTipoEntrega'), ROOT('Catalogos'), ELEMENTS
	END
	-- EDITAMOS UN ELEMENTO
	IF @opcion = 4
	BEGIN
		UPDATE	Catalogos.RequerimientoTramiteTipoEntrega
		SET		nombreTipoEntrega = LTRIM(RTRIM(UPPER(@nomTipoEntrega)))
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS PARA UN SELECT
	IF @opcion = 5
	BEGIN
		SELECT	id AS [Value], LTRIM(RTRIM(UPPER(nombreTipoEntrega))) AS [Description]
		FROM	Catalogos.RequerimientoTramiteTipoEntrega
		WHERE	activo = 1
		FOR	XML RAW('RequerimientoTramiteTipoEntrega'), ROOT('SelectCatalogs'), ELEMENTS
	END
END