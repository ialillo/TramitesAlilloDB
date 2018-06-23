-- INSERTAMOS LAS ENTIDADES DE LAS CUALES REALIZAMOS LOS TRAMITES EN LA BASE DE DATOS
INSERT INTO Catalogos.EntidadTramite(nombreEntidad)
SELECT	'ESTADO DE MEXICO'
INSERT INTO Catalogos.EntidadTramite(nombreEntidad)
SELECT	'CIUDAD DE MEXICO'
INSERT INTO Catalogos.EntidadTramite(nombreEntidad)
SELECT	'MORELOS'

-- INSERTAMOS LOS COLORES POSIBLES PARA ASIGNAR
INSERT	INTO Catalogos.ColoresEngomado(dia, color, terminacionPlaca)
SELECT	'LUNES', '#FFFF00', '5, 6'
INSERT	INTO Catalogos.ColoresEngomado(dia, color, terminacionPlaca)
SELECT	'MARTES', '#EE00AA', '7, 8'
INSERT	INTO Catalogos.ColoresEngomado(dia, color, terminacionPlaca)
SELECT	'MIERCOLES', '#EE00AA', '3, 4'
INSERT	INTO Catalogos.ColoresEngomado(dia, color, terminacionPlaca)
SELECT	'JUEVES', '#458B00', '1, 2'
INSERT	INTO Catalogos.ColoresEngomado(dia, color, terminacionPlaca)
SELECT	'VIERNES', '#0092CD', '9, 0'

-- INSERTAMOS LOS TIPOS DE USUARIOS QUE TENDREMOS EN LA APLICACION
INSERT	INTO Seguridad.Perfiles(perfil)
SELECT	'ADMINISTRADOR'
INSERT	INTO Seguridad.Perfiles(perfil)
SELECT	'EMPLEADO TAL CDMX'
INSERT	INTO Seguridad.Perfiles(perfil)
SELECT	'EMPLEADO TAL EDO'
INSERT	INTO Seguridad.Perfiles(perfil)
SELECT	'ADMINISTRADOR AGENCIA'
INSERT	INTO Seguridad.Perfiles(perfil)
SELECT	'OPERATIVO AGENCIA'

-- INSERTAMOS LOS DIFERENTES STATUS QUE PUEDE TENER UN TRAMITE
INSERT	INTO Catalogos.TramiteStatus(nombreStatus, descStatus)
SELECT	'RECIBIDO', 'EL TRAMITE ESTA REGISTRADO CORRECTAMENTE EN EL SISTEMA'
INSERT	INTO Catalogos.TramiteStatus(nombreStatus, descStatus)
SELECT	'CAPTURADO', 'HEMOS CAPTURADO EL TRAMITE Y LISTO PARA INICIARSE EN LA OFICINA DE TRANSITO'
INSERT	INTO Catalogos.TramiteStatus(nombreStatus, descStatus)
SELECT	'DIGITALIZADO', 'EL TRAMITE SE HA DIGITALIZADO EN LA OFICINA DE TRANSITO'
INSERT	INTO Catalogos.TramiteStatus(nombreStatus, descStatus)
SELECT	'SIN REPUVE', 'EL VEHICULO NO SE ENCUENTRA REGISTRADO EN EL REPUVE'
INSERT	INTO Catalogos.TramiteStatus(nombreStatus, descStatus)
SELECT	'TENENCIA NO DEPOSITADA', 'SE HA CAPTURADO EL TRAMITE, PERO NO SE HA INICIADO POR QUE LA AGENCIA NO HA DEPOSITADO EL MONTO DE LA TENENCIA'
INSERT	INTO Catalogos.TramiteStatus(nombreStatus, descStatus)
SELECT	'DOCUMENTACION PENDIENTE', 'FALTA DOCUMENTACION Y/O HAY ALGUN DETALLE CON LA DOCUMENTACION PROPORCIONADA, VERIFICAR FEEDBACK'
INSERT	INTO Catalogos.TramiteStatus(nombreStatus, descStatus)
SELECT	'CANCELADO', 'EL TRAMITE SE HA CANCELADO, VERIFICAR FEEDBACK'
INSERT	INTO Catalogos.TramiteStatus(nombreStatus, descStatus)
SELECT	'CONCLUIDO', 'EL VEHICULO YA TIENE PLACAS'

-- INSERTAMOS LAS AGENCIAS DE INICIO
INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'ARRENDOMOVIL DE MEXICO SA DE CV', 'ARRENDOMOVIL', 'AME021206NS8', 'INSURGENTES SUR', '1235', '', 
		'EXTREMADURA INSURGENTES', 'BENITO JUAREZ', 'CIUDAD DE MEXICO', '03740', 'tramitesalillo@gmail.com', ''

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'AUTO AZCA SA DE CV', 'SUZUKI', 'AAZ110906760', 'AV DE LAS GRANJAS', '420', '', 
		'SANTO TOMAS', 'AZCAPOTZALCO', 'CIUDAD DE MEXICO', '02020', 'auxiliar.credito@suzukivallejo.com.mx', '54872240'

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'AUTOCOMPACTOS ECATEPEC SAPI DE CV', 'AUTOCOMPACTOS ECATEPEC', 'AEC810722Q98', 'VIA JOSE LOPEZ PORTILLO', '10', 'A', 
		'COACALCO DE BERRIOZABAL', 'COACALCO', 'MEXICO', '55700', 'credito@nissanvallejo.com.mx', '54872240'

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'AUTOMOVILES GKA DE SATELITE SA DE CV', 'GKA DE SATELITE', 'AGS140402UY6', 'AUTOPISTA MEXICO A QUERETARO', '2600', '', 
		'VALLE DE LOS PINOS', 'TLALNEPANTLA DE BAZ', 'MEXICO', '54040', 'tramitesalillo@gmail.com', ''

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'AUTOS ELEGANTES SA DE CV', 'AUTOS ELEGANTES', 'AEL830110Q88', 'ANGEL URRAZA', '1311', '', 
		'DEL VALLE', 'BENITO JUAREZ ', 'CIUDAD DE MEXICO', '03100', 'tramitesalillo@gmail.com', ''

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'AUTOS SAPPORO SA DE CV', 'SAPPORO', 'ASA790611L7A', 'CALZADA DE TLALPAN', '2650', '', 
		'EMILIANO ZAPATA', 'COYOACAN ', 'CIUDAD DE MEXICO', '04815', 'tramitesalillo@gmail.com', '91496565'

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'CENTRO AUTOMOTRIZ DE TULA SA DE CV', 'AUTOMOTRIZ DE TULA', 'CAT9204046X7', 'CARR TULA-JOROBAS', 'KM 5.5', '', 
		'EL LLANO 2A SECCION', 'TULA DE ALLENDE HIDALGO', 'HIDALGO', '42800', 'tramitesalillo@gmail.com', '7737321959'

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'CHS ZARAGOZA MOTORS SA DE CV', 'ZARAGOZA', 'CZM970425J66', 'CALZ IGNACIO ZARAGOZA', '1154', '', 
		'PANTITLAN', 'IZTACALCO', 'CIUDAD DE MEXICO', '08100', 'tramitesalillo@gmail.com', '57004141'

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'DINASTIA AUTOMOTRIZ MEXICO SA DE CV', 'DINASTIA', 'DAM000322JM7', 'AV MAGNOCENTRO', '1', '', 
		'SAN FERNANDO', 'HUIXQUILUCAN', 'MEXICO', '52765', 'admin_vent.dam@grupoautofin.com', ' 56265600'

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'ECATEPEC AUTOMOTRIZ SA DE CV', 'ECATEPEC AUTOMOTRIZ', 'EAU840309641', 'VIA MORELOS', '161', '', 
		'NUEVO LAREDO', 'ECATEPEC', 'MEXICO', '55080', 'rcervantes@ecatepecautomotriz.com', ' 57700700'

INSERT	INTO Agencias(razonSocial, alias, rfc, calle, numExt, numInt, colonia, municipio, estado, codigoPostal, email, telefono)
SELECT	'EXCELENCIA AUTOMOTRIZ SA DE CV', 'CUAJIMALPA', 'EAU840309641', 'VIA MORELOS', '161', '', 
		'NUEVO LAREDO', 'ECATEPEC', 'MEXICO', '55080', 'rcervantes@ecatepecautomotriz.com', ' 57700700'

-- INSERTAMOS LOS USUARIOS A LA BASE DE DATOS
INSERT	INTO Seguridad.Usuarios(usuario, [password], nombre, apellidoPat, apellidoMat, email, idPerfil)
SELECT	'ialillo', '/E4Rq0DsepTPsu1/juLJwRZCw2ckwcgKFX8bNJX8+S0=', 'ISAI', 'ALILLO', 'FLORES', 'alilloem@gmail.com', 1

-- INSERTAMOS AL ADMINISTRADOR CON TODAS LAS AGENCIAS A LA BASE DE DATOS
INSERT	INTO Seguridad.UsuarioAgencias(idUsuario, idAgencia)
SELECT	u.id, a.id
FROM	Seguridad.Usuarios u CROSS JOIN Agencias a

-- INSERTAMOS LOS POSIBLES REQUERIMIENTOS DE UN TRAMITE EN LA BASE DE DATOS
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'FACTURA'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'IDENTIFICACION VIGENTE'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'IDENTIFICACION VIGENTE REPRESENTANTE LEGAL'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'COMPROBANTE DE DOMCILIO'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'PODER NOTARIAL'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'CARTA FACTURA VIGENTE'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'ACTA POR ROBO ANTE MINISTERIO PUBLICO'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'ACTA DE EXTRAVIO'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'PLACAS'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'PAGO DE TENENCIAS'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'FOTOGRAFIA CHOFER TAMAÑO INFANTIL'
INSERT	INTO Catalogos.RequerimientoTramite(requerimientoTramite)
SELECT	'CARTA DE SOLICITUD DE PERMISOS MEMBRETADA'

--INSERTAMOS LOS TIPOS DE TRAMITE
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'ALTA NUEVO'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'CAMBIO DE PROPIETARIO'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'BAJA DEFINITIVA'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'BAJA DEFINITIVA POR ROBO'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'BAJA DEFINITIVA SINIESTRO'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'BAJA & ALTA'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'BAJA & ALTA CON C/PROP'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'BAJA & ALTA OTRA ENTIDAD'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'BAJA & ALTA CON C/PROP OTRA ENTIDAD'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'BAJA CON C/PROP'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'PERMISO PARA CIRCULAR SIN PLACAS'
INSERT	INTO Catalogos.TipoTramite(tipoTramite)
SELECT	'CONVENIO DE CARGA TRANSPORTISTAS CDMX'

-- INSERTAMOS LOS STATUS QUE PUEDA TENER EL REQUERIMIENTO DE ALGUN TRAMITE
INSERT	INTO Catalogos.RequerimientoTramiteStatus(nombreStatus)
SELECT	'OK'
INSERT	INTO Catalogos.RequerimientoTramiteStatus(nombreStatus)
SELECT	'VENCIDO'
INSERT	INTO Catalogos.RequerimientoTramiteStatus(nombreStatus)
SELECT	'FOTOGRAFIA'
INSERT	INTO Catalogos.RequerimientoTramiteStatus(nombreStatus)
SELECT	'IMAGEN BORROSA'
INSERT	INTO Catalogos.RequerimientoTramiteStatus(nombreStatus)
SELECT	'IMAGEN OBSCURA'
INSERT	INTO Catalogos.RequerimientoTramiteStatus(nombreStatus)
SELECT	'IMAGEN ILEGIBLE'
INSERT	INTO Catalogos.RequerimientoTramiteStatus(nombreStatus)
SELECT	'NO PERTENECE A LA ENTIDAD FEDERATIVA'

-- INSERTAMOS EL TIPO DE ENTREGA DE LOS REQUERIMIENTOS DE UN TRAMITE
INSERT	INTO Catalogos.RequerimientoTramiteTipoEntrega(nombreTipoEntrega)
SELECT	'DIGITAL'
INSERT	INTO Catalogos.RequerimientoTramiteTipoEntrega(nombreTipoEntrega)
SELECT	'FISICO'
INSERT	INTO Catalogos.RequerimientoTramiteTipoEntrega(nombreTipoEntrega)
SELECT	'FISICO O DIGITAL'

--INSERCION DE MODULOS DEL SISTEMA
INSERT	INTO Navegacion.Modulos(modulo)
SELECT	'CONFIGURACION'
INSERT	INTO Navegacion.Modulos(modulo)
SELECT	'CATALOGOS'

-- INSERCION DE SUBMODULOS DEL SISTEMA
INSERT	INTO Navegacion.Submodulos(idModulo, submodulo, url)
SELECT	1, 'TRAMITE', 'Configuration/Tramites.aspx'
INSERT	INTO Navegacion.Submodulos(idModulo, submodulo, url)
SELECT	1, 'AGENCIAS', 'Configuration/Agencias.aspx'
INSERT	INTO Navegacion.Submodulos(idModulo, submodulo, url)
SELECT	2, 'TIPO TRAMITE', 'Catalogs/TipoTramite.aspx'

-- INSERTAMOS AL ADMINISTRADOR CON TODOS LOS SUBMODULOS EXISTENTES DEL SISTEMA
INSERT	INTO Configuracion.PerfilesSubmodulos(idPerfil, idSubmodulo)
SELECT	p.id, s.id
FROM	Seguridad.Perfiles p CROSS JOIN Navegacion.Submodulos s
WHERE	p.id = 1

-- INSERTAMOS LAS ENTIDADES DEL ADMINISTRADOR
INSERT	INTO Configuracion.PerfilesEntidadTramite(idPerfil, idEntidadTramite)
SELECT	per.id, et.id
FROM	Seguridad.Perfiles per CROSS JOIN Catalogos.EntidadTramite et
WHERE	per.id = 1

-- LLENAMOS EL CATALOGO DE CONCEPTOS DE CARGA
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'ABARROTESALIMENTOS VARIOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'ANUNCIOS Y LO RELAC.'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'ARTICULOS DEPORTIVOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'ARTICULOS PARA EL HOGAR'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'AVICULTURA Y LO RELAC.'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'BANQUETES'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'BEBIDAS ALCOHOLICAS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'BEBIDAS EMBOTELLADAS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'CARNES Y EMBUTIDOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'CARROZA Y LO REL. FUNERARIA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'CORROSIVOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'DESPERDICIOS INDUSTRIALES NO PELIGROSOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'EXPLOSIVOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'FERRETERIA, PLOMERIA,TLAPALERIA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'FLORESFUNERARIOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'GANADO EN GENERAL'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'GASES COMPRIMIDOS REFRIGERADOS LICUADOS O DISUELTOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'HERRERIAHIELOJALA REMOLQUE'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'JARDINERIA Y SIMILAR'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'JUGUETES'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'LACTEOS Y LO RELAC.'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'LAVANDERIA Y TINTORERIA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'LITOGRAFIA Y PAPELERIA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'LO REL. A LA EMPRESA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'MAQUINARIA Y EQUIPO EN GENERAL'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'MATERIAL ELECTRICO'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'MATERIALES DE CONSTRUCCION'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'MENSAJERIA Y PAQUETERIA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'METALES'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'MUEBLES EN GENERAL'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'NUPCIAL'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'OXIDANTES Y PEROXIDOS ORGANICOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PAN Y SIMILARESPAPEL INDUSTRIALPAPELERIA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PAPELERIA EN GENERAL'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PARTES AUTOMOTRICES Y REFACCIONES EN GRAL.'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PARTICULARPIPA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PROD. AGRICOLAS Y LO REL. CAMPO'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PRODUCTOS FORESTALES'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PRODUCTOS MINERALES NO METALURGICOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PRODUCTOS QUIMICOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'PRODUCTOS QUIMICOS NO PELIGROSOS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'RELACIONADO CON LA MINERIA'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'TEXTILES'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'TRANSPORTE DE MOTOCICLETAS'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'USO DE CASA HABITACION'
INSERT INTO Catalogos.ConceptosCarga(idEntidadTramite, nombreConceptoCarga) SELECT 1, 'VIDRIERIA'