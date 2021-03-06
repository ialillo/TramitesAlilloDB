USE [TAL]
GO
/****** Object:  StoredProcedure [Catalogos].[EntidadTramiteManagement]    Script Date: 07/11/2017 05:56:46 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Catalogos].[EntidadTramiteManagement]
	@opcion			INT = 3,
	@idUsuario		SMALLINT = 0,
	@id				INT = 0,
	@nombreEntidad	CHAR(100) = '',
	@activo			BIT = 1
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Catalogos.EntidadTramite(nombreEntidad)
		SELECT	LTRIM(RTRIM(UPPER(@nombreEntidad)))
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Catalogos.EntidadTramite
		SET		activo = 0
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS
	IF @opcion = 3
	BEGIN
		SELECT	et.id AS Id, LTRIM(RTRIM(UPPER(et.nombreEntidad))) AS NombreEntidad, et.activo AS Activo
		FROM	Catalogos.EntidadTramite et INNER JOIN Configuracion.PerfilesEntidadTramite pet ON
					et.id = pet.idEntidadTramite
				INNER JOIN Seguridad.Usuarios usr ON
					pet.idPerfil = usr.idPerfil
		WHERE	(et.id = @id OR @id = 0)
				AND (et.nombreEntidad = @nombreEntidad OR @nombreEntidad = '')
				AND (et.activo = @activo OR @activo = 1)
				AND	usr.id = @idUsuario
		FOR	XML RAW('EntidadTramite'), ROOT('Catalogos'), ELEMENTS
	END
	-- EDITAMOS UN ELEMENTO
	IF @opcion = 4
	BEGIN
		UPDATE	Catalogos.EntidadTramite
		SET		nombreEntidad = LTRIM(RTRIM(UPPER(@nombreEntidad)))
		WHERE	id = @id
	END
	-- TRAEMOS LA LISTA DE ELEMENTOS PARA UN SELECT
	IF @opcion = 5
	BEGIN
		SELECT	et.id AS [Value], LTRIM(RTRIM(UPPER(et.nombreEntidad))) AS [Description]
		FROM	Catalogos.EntidadTramite et INNER JOIN Configuracion.PerfilesEntidadTramite pet ON
					et.id = pet.idEntidadTramite
				INNER JOIN Seguridad.Usuarios usr ON
					pet.idPerfil = usr.idPerfil
		WHERE	et.activo = 1
				AND	usr.id = @idUsuario
		FOR XML RAW('SelectItems'), ROOT('SelectCatalogs'), ELEMENTS
	END
END