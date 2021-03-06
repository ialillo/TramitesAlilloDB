USE [TAL]
GO
/****** Object:  StoredProcedure [Configuracion].[TramiteEspecificacionManagement]    Script Date: 26/10/2017 10:04:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Configuracion].[TramiteEspecificacionManagement]
	@opcion								SMALLINT = 3,
	@idEntidadTramite					SMALLINT = 0,
	@idTipoTramite						SMALLINT = 0,
	@idRequerimientoTramite				SMALLINT = 0,
	@idRequerimientoTramiteTipoEntrega	TINYINT = 0,
	@personaMoral						BIT = 0,
	@carga								BIT = 0,
	@fechaInicioVigencia				DATETIME = '1900-01-01',
	@fechaFinVigencia					DATETIME = '9999-12-31'
AS
BEGIN
	-- INSERTAMOS UN NUEVO REGISTRO
	IF @opcion = 1
	BEGIN
		INSERT	INTO Configuracion.TramiteEspecificacion
				(
						idEntidadTramite, idTipoTramite, idRequerimientoTramite, idRequerimientoTramiteTipoEntrega, 
						personaMoral, carga, fechaInicioVigencia, fechaFinVigencia
				)
		SELECT	@idEntidadTramite, @idTipoTramite, @idRequerimientoTramite, @idRequerimientoTramiteTipoEntrega,
				@personaMoral, @carga, GETDATE(), @fechaFinVigencia
	END
	-- DESACTIVAMOS UN REGISTRO
	IF @opcion = 2
	BEGIN
		UPDATE	Configuracion.TramiteEspecificacion
		SET		@fechaFinVigencia = '1900-01-01'
		WHERE	idEntidadTramite = @idEntidadTramite
				AND idTipoTramite = @idTipoTramite
				AND idRequerimientoTramite = @idRequerimientoTramite
				AND idRequerimientoTramiteTipoEntrega = @idRequerimientoTramiteTipoEntrega
				AND personaMoral = @personaMoral
				AND carga = @carga
	END
	-- TRAEMOS LA LISTA DE ESPECIFICACIONES DE TRAMITES VIGENTES
	IF @opcion = 3
	BEGIN
		SELECT	te.idEntidadTramite AS IdEntidadTramite, LTRIM(RTRIM(UPPER(et.nombreEntidad))) AS NombreEntidadTramite,
				te.idTipoTramite AS IdTipoTramite, LTRIM(RTRIM(UPPER(tt.tipoTramite))) AS NombreTipoTramite,
				te.idRequerimientoTramite AS IdRequerimientoTramite, LTRIM(RTRIM(UPPER(rt.requerimientoTramite))) AS NombreRequerimientoTramite,
				te.idRequerimientoTramiteTipoEntrega AS IdRequerimientoTramiteTipoEntrega,
				LTRIM(RTRIM(UPPER( rtte.nombreTipoEntrega))) AS NombreRequerimientoTramiteTipoEntrega,
				te.personaMoral AS PersonaMoral, te.carga AS Carga, CONVERT(VARCHAR(10), te.fechaInicioVigencia, 103) AS FechaInicioVigencia,
				CONVERT(VARCHAR(10), te.fechaFinVigencia, 103) AS FechaFinVigencia
		FROM	Configuracion.TramiteEspecificacion te INNER JOIN Catalogos.EntidadTramite et ON
					et.id = te.idEntidadTramite
				INNER JOIN Catalogos.TipoTramite tt ON
					tt.id = te.idTipoTramite
				INNER JOIN Catalogos.RequerimientoTramite rt ON
					rt.id = te.idRequerimientoTramite
				INNER JOIN Catalogos.RequerimientoTramiteTipoEntrega rtte ON
					rtte.id = te.idRequerimientoTramiteTipoEntrega
		WHERE	DATEDIFF(d, te.fechaFinVigencia, '9999-12-31') = 0
		FOR XML RAW('TramiteEspecificacion'), ELEMENTS
	END
END