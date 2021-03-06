USE [TAL]
GO
/****** Object:  StoredProcedure [Seguridad].[Autenticar]    Script Date: 13/07/2017 10:38:14 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Seguridad].[Autenticar]
	@usuario VARCHAR(20),
	@password VARCHAR(100)
AS
BEGIN
	-- VERIFICAMOS SI EXISTE EL USUARIO EN LA BASE DE DATOS
	IF	(
			SELECT	COUNT(1)
			FROM	Seguridad.Usuarios
			WHERE	usuario = @usuario
		) > 0
	BEGIN
		-- VERIFICAMOS SI LAS CREDENCIALES PROPORCIONADAS SON CORRECTAS Y QUE EL USUARIO ESTE ACTIVO
		IF	(
				SELECT	COUNT(1)
				FROM	Seguridad.Usuarios
				WHERE	usuario = @usuario
						AND [password] = @password
						AND activo = 1
			) > 0
		BEGIN
			-- RESETEAMOS LOS INTENTOS FALLIDOS DE LOGIN
			UPDATE	Seguridad.Usuarios
			SET		intentosFallidosDeLogin = 0
			WHERE	usuario = @usuario
					AND [password] = [password]
			
			-- REGRESAMOS EL OBJETO DE USUARIO LOGEADO
			SELECT	usr.id AS Id, usr.usuario AS Usuario, ISNULL(usr.nombre, '') AS Nombre, ISNULL(usr.apellidoPat, '') AS ApellidoPaterno, 
					ISNULL(usr.apellidoMat, '') AS ApellidoMaterno, ISNULL(per.id, 0) AS IdPerfil, 
					ISNULL(per.perfil, 'NO ASIGNADO') AS Perfil, ISNULL(usr.email, 'NO ASIGNADO') AS Email, 
					usr.intentosFallidosDeLogin AS IntentosFallidosDeLogin,
					usr.passwordRestaurado AS PasswordRestaurado, usr.activo AS Activo
			FROM	Seguridad.Usuarios usr LEFT OUTER JOIN Seguridad.Perfiles per ON
						usr.idPerfil = per.id
			WHERE	usr.usuario = @usuario
					AND usr.password = @password
			FOR XML RAW('LoggedUser'), ELEMENTS
		END
		ELSE
		BEGIN
			-- SI LAS CREDENCIALES SON INCORRECTAS SE AUMENTA EN UNO EL CONTADOR DE INTENTOS FALLIDOS
			UPDATE	Seguridad.Usuarios
			SET		intentosFallidosDeLogin = intentosFallidosDeLogin + 1
			WHERE	usuario = @usuario

			-- SI EL USUARIO HA FALLADO 6 VECES EN LOGEARSE, SE DESACTIVA LA CUENTA
			IF	(
					SELECT	COUNT(1)
					FROM	Seguridad.Usuarios
					WHERE	usuario = @usuario
							AND intentosFallidosDeLogin >= 6
							AND activo = 1
				) > 0
			BEGIN
				UPDATE	Seguridad.Usuarios
				SET		activo = 0
				WHERE	usuario = @usuario
			END

			-- REGRESAMOS EL USUARIO CON LA INFORMACION DE LAS VECES ERRONEAS DE LOGIN Y SI ESTA ACTIVO
			SELECT	0 as Id, '' AS Usuario, '' AS Nombre, '' AS ApellidoPaterno, '' AS ApellidoMaterno, 0 AS IdPerfil, 
					'' AS Perfil, '' AS Email, usr.intentosFallidosDeLogin AS IntentosFallidosDeLogin, 
					0 AS PasswordRestaurado, usr.activo AS Activo
			FROM	Seguridad.Usuarios usr
			WHERE	usr.usuario = @usuario
			FOR XML RAW('LoggedUser'), ELEMENTS
		END
	END
	ELSE
	BEGIN
		-- SI NO EXISTE EL USUARIO NO REGRESA NADA
		SELECT	0, '' AS Usuario, '' AS Nombre, '' AS ApellidoPaterno, ''AS ApellidoMaterno, 0 AS IdPerfil, 
				'NO ASIGNADO' AS Perfil, 'NO ASIGNADO' AS Email
		FROM	Seguridad.Usuarios
		WHERE	usuario = @usuario
		FOR XML RAW('LoggedUser'), ELEMENTS
	END
END