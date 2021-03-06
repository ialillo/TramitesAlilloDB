USE [TAL]
GO
/****** Object:  StoredProcedure [Catalogos].[TipoTramiteManagement]    Script Date: 07/11/2017 05:57:34 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Catalogos].[TipoTramiteManagement]
	@opcion			INT = 3,
	@id				INT = 0,
	@tipoTramite	CHAR(100) = '',
	@activo			BIT = 1
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Catalogos.TipoTramite(tipoTramite)
		SELECT	@tipoTramite
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Catalogos.TipoTramite
		SET		activo = 0
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS
	IF @opcion = 3
	BEGIN
		SELECT	id AS Id, LTRIM(RTRIM(UPPER(tipoTramite))) AS NombreTipoTramite, activo AS Activo
		FROM	Catalogos.TipoTramite
		WHERE	(id = @id OR @id = 0)
				AND (tipoTramite = @tipoTramite OR @tipoTramite = '')
				AND (activo = @activo OR @activo = 1)
		FOR XML RAW('TipoTramite'), ROOT('Catalogos'), ELEMENTS
	END
	-- EDITAMOS UN ELEMENTO
	IF @opcion = 4
	BEGIN
		UPDATE	Catalogos.TipoTramite
		SET		tipoTramite = LTRIM(RTRIM(UPPER(@tipoTramite)))
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS PARA UN SELECT
	IF @opcion = 5
	BEGIN
		SELECT	id AS [Value], LTRIM(RTRIM(UPPER(tipoTramite))) AS [Description]
		FROM	Catalogos.TipoTramite
		WHERE	activo = 1
		FOR	XML RAW('SelectItems'), ROOT('SelectCatalogs'), ELEMENTS
	END
END