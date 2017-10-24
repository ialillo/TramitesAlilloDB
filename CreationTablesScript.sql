USE TAL
GO
IF
(
	SELECT	COUNT(1)
	FROM	sys.schemas
	WHERE	name = 'Catalogos'
) = 0
BEGIN
	EXEC('CREATE SCHEMA Catalogos')
END
GO
IF
(
	SELECT	COUNT(1)
	FROM	sys.schemas
	WHERE	name = 'Seguridad'
) = 0
BEGIN
	EXEC('CREATE SCHEMA Seguridad')
END
GO
IF
(
	SELECT	COUNT(1)
	FROM	sys.schemas
	WHERE	name = 'Tramites'
) = 0
BEGIN
	EXEC('CREATE SCHEMA Tramites')
END
GO
IF
(
	SELECT	COUNT(1)
	FROM	sys.schemas
	WHERE	name = 'Navegacion'
) = 0
BEGIN
	EXEC('CREATE SCHEMA Navegacion')
END
GO
IF
(
	SELECT	COUNT(1)
	FROM	sys.schemas
	WHERE	name = 'Herramientas'
) = 0
BEGIN
	EXEC('CREATE SCHEMA Herramientas')
END
GO
IF
(
	SELECT	COUNT(1)
	FROM	sys.schemas
	WHERE	name = 'Servicios'
) = 0
BEGIN
	EXEC('CREATE SCHEMA Servicios')
END
GO
IF
(
	SELECT	COUNT(1)
	FROM	sys.schemas
	WHERE	name = 'Configuracion'
) = 0
BEGIN
	EXEC('CREATE SCHEMA Configuracion')
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Modulos'
			AND TABLE_SCHEMA = 'Navegacion'
) = 0
BEGIN
	CREATE TABLE Navegacion.Modulos
		(
			id		TINYINT IDENTITY(1, 1) PRIMARY KEY,
			modulo	VARCHAR(50),
			activo	BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Submodulos'
			AND TABLE_SCHEMA = 'Navegacion'
) = 0
BEGIN
	CREATE TABLE Navegacion.Submodulos
		(
			id			TINYINT IDENTITY(1, 1),
			idModulo	TINYINT REFERENCES Navegacion.Modulos(id),
			submodulo	VARCHAR(80),
			[url]		VARCHAR(200),
			activo		BIT DEFAULT 1,
			PRIMARY KEY(id)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Perfiles'
			AND TABLE_SCHEMA = 'Seguridad'
) = 0
BEGIN
	CREATE TABLE Seguridad.Perfiles
		(
			id		TINYINT IDENTITY(1, 1) PRIMARY KEY,
			perfil	VARCHAR(50),
			activo	BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Usuarios'
			AND TABLE_SCHEMA = 'Seguridad'
) = 0
BEGIN
	CREATE TABLE Seguridad.Usuarios
		(
			id						SMALLINT IDENTITY(1, 1) PRIMARY KEY,
			usuario					VARCHAR(20),
			[password]				VARCHAR(50),
			nombre					VARCHAR(80),
			apellidoPat				VARCHAR(80),
			apellidoMat				VARCHAR(80),
			email					VARCHAR(30),
			idPerfil				TINYINT REFERENCES Seguridad.Perfiles(id),
			intentosFallidosDeLogin	TINYINT DEFAULT 0,
			passwordRestaurado		BIT DEFAULT 0,
			activo					BIT DEFAULT 1,
			UNIQUE(usuario)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Agencias'
			AND TABLE_SCHEMA = 'dbo'
) = 0
BEGIN
	CREATE TABLE dbo.Agencias
		(
			id				SMALLINT IDENTITY(1, 1) PRIMARY KEY,
			razonSocial		CHAR(250),
			alias			CHAR(200),
			rfc				CHAR(13),
			calle			CHAR(250),
			numExt			CHAR(50),
			numInt			CHAR(50),
			colonia			CHAR(250),
			municipio		CHAR(250),
			localidad		CHAR(250),
			estado			CHAR(200),
			codigoPostal	CHAR(5),
			email			CHAR(80),
			telefono		CHAR(20),
			ctaContable		CHAR(80),
			ctaDeposito		CHAR(80),
			activo			BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'UsuarioAgencias'
			AND TABLE_SCHEMA = 'Seguridad'
) = 0
BEGIN
	CREATE TABLE Seguridad.UsuarioAgencias
		(
			idUsuario	SMALLINT REFERENCES Seguridad.Usuarios(id),
			idAgencia	SMALLINT REFERENCES dbo.Agencias(id),
			activo		BIT DEFAULT 1,
			PRIMARY KEY(idUsuario, idAgencia)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'TipoTramite'
			AND TABLE_SCHEMA = 'Catalogos'
) = 0
BEGIN
	CREATE TABLE Catalogos.TipoTramite
		(
			id			SMALLINT IDENTITY(1, 1) PRIMARY KEY,
			tipoTramite VARCHAR(100),
			activo		BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'TramiteStatus'
			AND TABLE_SCHEMA = 'Catalogos'
) = 0
BEGIN
	CREATE TABLE Catalogos.TramiteStatus
		(
			id				SMALLINT IDENTITY(1, 1) PRIMARY KEY,
			nombreStatus	CHAR(80),
			descStatus		VARCHAR(200),
			activo			BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'EntidadTramite'
			AND TABLE_SCHEMA = 'Catalogos'
) = 0
BEGIN
	CREATE TABLE Catalogos.EntidadTramite
		(
			id				SMALLINT IDENTITY(1, 1) PRIMARY KEY,
			nombreEntidad	VARCHAR(100),
			activo			BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'RequerimientoTramite'
			AND TABLE_SCHEMA = 'Catalogos'
) = 0
BEGIN
	CREATE TABLE Catalogos.RequerimientoTramite
		(
			id						SMALLINT IDENTITY(1, 1) PRIMARY KEY,
			requerimientoTramite	VARCHAR(150),
			activo					BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'RequerimientoTramiteStatus'
			AND TABLE_SCHEMA = 'Catalogos'
) = 0
BEGIN
	CREATE TABLE Catalogos.RequerimientoTramiteStatus
		(
			id				TINYINT IDENTITY(1, 1) PRIMARY KEY,
			nombreStatus	VARCHAR(100),
			activo			BIT DEFAULT 1
		)
END
GO
IF
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Mail'
			AND TABLE_SCHEMA = 'Herramientas'
) = 0
BEGIN
	CREATE TABLE Herramientas.Mail
		(
			id			SMALLINT IDENTITY(1, 1) PRIMARY KEY,
			nombre		VARCHAR(50),
			[from]		VARCHAR(150),
			[to]		VARCHAR(150),
			[subject]	VARCHAR(100),
			[body]		VARCHAR(1000),
			bodyIsHtml	BIT
		)
END
----------------------------------------------------14/12/2014----------------------------------------------------
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'RequerimientoTramiteTipoEntrega'
			AND TABLE_SCHEMA = 'Catalogos'
) = 0
BEGIN
	CREATE TABLE Catalogos.RequerimientoTramiteTipoEntrega
		(
			id					TINYINT IDENTITY(1, 1) PRIMARY KEY,
			nombreTipoEntrega	VARCHAR(100),
			activo				BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'AdicionalesTramite'
			AND TABLE_SCHEMA = 'Catalogos'
) = 0
BEGIN
	CREATE TABLE Catalogos.AdicionalesTramite
		(
			id				SMALLINT IDENTITY(1, 1) PRIMARY KEY,
			nombreAdicional VARCHAR(100),
			activo			BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'ColoresEngomado'
			AND TABLE_SCHEMA = 'Catalogos'
) = 0
BEGIN
	CREATE TABLE Catalogos.ColoresEngomado
		(
			id					TINYINT IDENTITY(1, 1) PRIMARY KEY,
			dia					VARCHAR(10),
			color				VARCHAR(10),
			terminacionPlaca	VARCHAR(10),
			activo				BIT DEFAULT 1
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'TramiteEspecificacion'
			AND TABLE_SCHEMA = 'Configuracion'
) = 0
BEGIN
	CREATE TABLE Configuracion.TramiteEspecificacion
		(
			idEntidadTramite					SMALLINT REFERENCES Catalogos.EntidadTramite(id),
			idTipoTramite						SMALLINT REFERENCES Catalogos.TipoTramite(id),
			idRequerimientoTramite				SMALLINT REFERENCES Catalogos.RequerimientoTramite(id),
			idRequerimientoTramiteTipoEntrega	TINYINT REFERENCES Catalogos.RequerimientoTramiteTipoEntrega(id),
			personaMoral						BIT,
			carga								BIT,
			fechaInicioVigencia					DATETIME NULL,
			fechaFinVigencia					DATETIME NULL,
			UNIQUE(idEntidadTramite, idTipoTramite, idRequerimientoTramite, fechaInicioVigencia, fechaFinVigencia)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'TramitePrecios'
			AND TABLE_SCHEMA = 'Configuracion'
) = 0
BEGIN
	CREATE TABLE Configuracion.TramiteHonorarios
		(
			idAgencia			SMALLINT REFERENCES dbo.Agencias(id),
			idEntidadTramite	SMALLINT REFERENCES Catalogos.EntidadTramite(id),
			idTipoTramite		SMALLINT REFERENCES Catalogos.TipoTramite(id),
			monto				NUMERIC(10, 2),
			montoCarga			NUMERIC(10, 2),
			fechaInicioVigencia DATETIME NULL,
			fechaFinVigencia	DATETIME NULL,
			UNIQUE(idAgencia, idEntidadTramite, idTipoTramite, monto, fechaInicioVigencia, fechaFinVigencia)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'AgenciaIva'
			AND TABLE_SCHEMA = 'Configuracion'
) = 0
BEGIN
	--Aqui se podra configurar un iva en especial para cierta agencia, si es que se necesita.
	CREATE TABLE Configuracion.AgenciaIva
		(
			idAgencia			SMALLINT REFERENCES dbo.Agencias(id),
			montoIva			FLOAT,
			fechaInicioVigencia DATETIME NULL,
			fechaFinVigencia	DATETIME NULL,
			UNIQUE(idAgencia, montoIva, fechaInicioVigencia, fechaFinVigencia)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'AgeciaAdicionalesTramite'
			AND TABLE_SCHEMA = 'Configuracion'
) = 0
BEGIN
	--Aqui se especificara que atributos adicionales pueden tener los tramites de ciertas agencias. 
	--Por ejemplo: Proporcionar Comprobante de Domicilio, Engomado de color especial, Etc
	CREATE TABLE Configuracion.AgenciaAdicionalesTramite
		(
			idAgencia			SMALLINT REFERENCES dbo.Agencias(id),
			idTipoTramite		SMALLINT REFERENCES Catalogos.TipoTramite(id),
			idAdicionalTramite	SMALLINT REFERENCES Catalogos.AdicionalesTramite(id),
			reembolsable		BIT,
			facturable			BIT,
			monto				NUMERIC(10, 2),
			fechaInicioVigencia DATETIME NULL,
			fechaFinVigencia	DATETIME NULL,
			UNIQUE(idAgencia, idTipoTramite, idAdicionalTramite, fechaInicioVigencia, fechaFinVigencia)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'PerfilesSubmodulos'
			AND TABLE_SCHEMA = 'Configuracion'
) = 0
BEGIN
	CREATE TABLE Configuracion.PerfilesSubmodulos
		(
			idPerfil	TINYINT REFERENCES Seguridad.Perfiles(id),
			idSubmodulo TINYINT REFERENCES Navegacion.Submodulos(id),
			activo		BIT DEFAULT 1,
			PRIMARY KEY(idPerfil, idSubmodulo)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Tramite'
			AND TABLE_SCHEMA = 'Tramites'
) = 0
BEGIN
	CREATE TABLE Tramites.Tramite
		(
			id					BIGINT IDENTITY(1, 1) PRIMARY KEY,
			idUsuario			SMALLINT REFERENCES Seguridad.Usuarios(id),
			idAgencia			SMALLINT REFERENCES Agencias(id),
			idTipoTramite		SMALLINT REFERENCES Catalogos.TipoTramite(id),
			idEntidadTramite	SMALLINT REFERENCES Catalogos.EntidadTramite(id),
			idTramiteStatus		SMALLINT REFERENCES Catalogos.TramiteStatus(id) NULL,
			nombre				CHAR(200) NOT NULL,
			apellidoPaterno		CHAR(80) NULL,
			apellidoMaterno		CHAR(80) NULL,
			anioModelo			INT,
			noFactura			CHAR(15),
			serie				CHAR(17),
			placa				CHAR(8),
			personaMoral		BIT DEFAULT 0,
			montoFormatoPago	NUMERIC(10, 2),
			facturable			BIT DEFAULT 1,
			carga				BIT DEFAULT 0,
			conceptoCarga		CHAR(200) NULL
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'TramiteFeedBack'
			AND TABLE_SCHEMA = 'Tramites'
) = 0
BEGIN
	CREATE TABLE Tramites.TramiteFeedBack
		(
			idTramiteFeedback	BIGINT IDENTITY(1, 1) PRIMARY KEY,
			idTramite			BIGINT REFERENCES Tramites.Tramite(id),
			idUsuario			SMALLINT REFERENCES Seguridad.Usuarios(id),
			fecha				DATETIME DEFAULT GETDATE(),
			mensaje				VARCHAR(1000),
			leido				BIT
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'Comunicados'
			AND TABLE_SCHEMA = 'dbo'
) = 0
BEGIN
	CREATE TABLE dbo.Comunicados
		(
			id			INT IDENTITY(1,1) PRIMARY KEY,
			idUsuario	SMALLINT	REFERENCES Seguridad.Usuarios(id),
			idAgencia	SMALLINT REFERENCES Agencias(id),
			fechaInicio	DATETIME,
			fechaFin	DATETIME,
			mensaje		VARCHAR(1500)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'TramiteColorEngomado'
			AND TABLE_SCHEMA = 'Tramites'
) = 0
BEGIN
	CREATE TABLE Tramites.TramiteColorEngomado
		(
			idUsuario		SMALLINT REFERENCES Seguridad.Usuarios(id),
			idTramite		BIGINT REFERENCES Tramites.Tramite(id),
			idColorEngomado TINYINT REFERENCES Catalogos.ColoresEngomado(id),
			fecha			DATETIME,
			UNIQUE(idUsuario, idTramite, idColorEngomado)
		)
END
GO
IF 
(
	SELECT	COUNT(1)
	FROM	INFORMATION_SCHEMA.TABLES
	WHERE	TABLE_NAME = 'PerfilesEntidadTramite'
			AND TABLE_SCHEMA = 'Configuracion'
) = 0
BEGIN
	CREATE TABLE Configuracion.PerfilesEntidadTramite
		(
			idPerfil			TINYINT REFERENCES Seguridad.Perfiles(id),
			idEntidadTramite	SMALLINT REFERENCES Catalogos.EntidadTramite(id),
			UNIQUE(idPerfil, idEntidadTramite)
		)
END