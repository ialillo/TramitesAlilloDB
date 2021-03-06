USE [TAL]
GO
/****** Object:  StoredProcedure [Seguridad].[CambiaPassword]    Script Date: 13/07/2017 10:38:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[CambiaPassword]
	@usuario	VARCHAR(20),
	@oldPwd		VARCHAR(50),
	@newPwd		VARCHAR(50)
AS
BEGIN
	DECLARE	@mensajeRegreso VARCHAR(10)

	IF	(
			SELECT	COUNT(1)
			FROM	Seguridad.Usuarios
			WHERE	usuario = @usuario
					AND [password] = @oldPwd
		) > 0
	BEGIN
		UPDATE	Seguridad.Usuarios
		SET		[password] = @newPwd, passwordRestaurado = 0
		WHERE	usuario = @usuario
				AND	[password] = @oldPwd

		SELECT	@mensajeRegreso = 'OK'
	END
	ELSE
	BEGIN
		SELECT	@mensajeRegreso = 'ERROR'
	END

	SELECT @mensajeRegreso AS mensaje
END