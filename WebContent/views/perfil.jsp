<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- 		<link rel="stylesheet" -->
<!-- 			href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/tooltipster.css"
	media="screen" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/bootstrap.css"
	media="screen" type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/prueba.css"
	media="screen" type="text/css" />
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.tooltipster.min.js"></script>
<title>Foro : Tu perfil</title>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<jsp:include page="/views/template/headerVertical.jsp" />
		</div>
		<div class="page-content">
			<div class="derechaFloat">
				<jsp:include page="/views/formPerfil.jsp" />
			</div>
			<div class="list-group list-groupForm font">
				<p class="list-group-item active fontTitulo">Perfil</p>
				<a href="#" class="list-group-item">Editar tu info</a> <a href="#"
					class="list-group-item">Editar tu foto de perfil</a> <a href="#"
					class="list-group-item">Privacidad del perfil</a>
				<p class="list-group-item active fontTitulo">Red social</p>
				<a href="#" class="list-group-item">Tus amigos y contactos</a>
				<p class="list-group-item active fontTitulo">Opciones y
					Configuracion</p>
				<a href="#" class="list-group-item">Editar Avatar</a> <a href="#"
					class="list-group-item">Editar Firma</a> <a href="#"
					class="list-group-item">Editar correo y contraseña</a>
				<p class="list-group-item active fontTitulo">Mensajes privados</p>
				<a href="#" class="list-group-item">Ver mensajes privados</a> <a
					href="#" class="list-group-item">Enviar mensaje</a>
				<p class="list-group-item active fontTitulo">Otras opciones</p>
				<a href="#" class="list-group-item">Borrar mi cuenta</a>
			</div>
		</div>
		<div class="page-footer noFloat">
			<jsp:include page="/views/template/footerVertical.jsp" />
		</div>
	</div>
</body>
</html>