USE [TAL]
GO
/****** Object:  StoredProcedure [Catalogos].[RequerimientoTramiteManagement]    Script Date: 21/07/2017 05:03:17 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [Catalogos].[RequerimientoTramiteManagement]
	@opcion			INT = 3,
	@id				INT = 0,
	@reqTramite		CHAR(100) = '',
	@activo			BIT = 1
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
		SELECT	@reqTramite
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Catalogos.RequerimientoTramite
		SET		activo = 0
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS
	IF @opcion = 3
	BEGIN
		SELECT	id AS Id, LTRIM(RTRIM(UPPER(requerimientoTramite))) AS NombreTipoTramite, activo AS Activo
		FROM	Catalogos.RequerimientoTramite
		WHERE	(id = @id OR @id = 0)
				AND (requerimientoTramite = @reqTramite OR @reqTramite = '')
				AND (activo = @activo OR @activo = 1)
		FOR XML RAW('RequerimientoTramite'), ROOT('Catalogos'), ELEMENTS
	END
	-- EDITAMOS UN ELEMENTO
	IF @opcion = 4
	BEGIN
		UPDATE	Catalogos.RequerimientoTramite
		SET		requerimientoTramite = LTRIM(RTRIM(UPPER(@reqTramite)))
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS PARA UN SELECT
	IF @opcion = 5
	BEGIN
		SELECT	id AS [Value], LTRIM(RTRIM(UPPER(requerimientoTramite))) AS [Description]
		FROM	Catalogos.RequerimientoTramite
		WHERE	activo = 1
		FOR	XML RAW('RequerimientoTramite'), ROOT('SelectCatalogs'), ELEMENTS
	END
END