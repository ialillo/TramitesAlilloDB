USE [TAL]
GO
/****** Object:  StoredProcedure [Navegacion].[ObtenMenu]    Script Date: 13/07/2017 10:37:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE	PROCEDURE [Navegacion].[ObtenMenu]
	@idUsuario	INT
AS
BEGIN
	SELECT	Modulo.id AS IdModulo, LTRIM(RTRIM(Modulo.modulo)) AS DescModulo, SubModulo.id AS IdSubmodulo,
			LTRIM(RTRIM(SubModulo.submodulo)) AS DescSubmodulo, SubModulo.[url] as [Url]
	FROM	Seguridad.Usuarios usr INNER JOIN Configuracion.PerfilesSubmodulos ps ON
				ps.idPerfil = usr.idPerfil
			INNER JOIN Navegacion.Submodulos SubModulo ON
				SubModulo.id = ps.idSubmodulo
			INNER JOIN Navegacion.Modulos Modulo ON
				Modulo.id = SubModulo.idModulo
	WHERE	usr.id = @idUsuario
			AND SubModulo.activo = 1
	FOR		XML AUTO, ROOT('Menu'), ELEMENTS
END