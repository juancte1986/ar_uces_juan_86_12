<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<script type="text/javascript">
		</script>
	</head>
	<body>
			<img src="${pageContext.request.contextPath}/imagen/foro4.jpeg"
				class="img-responsive anguloIzquierdo" alt="Responsive image"><br />
		<div align="right">
		<div class="btn-group page-header-btn" role="group">
				<a class=" btn-link" href='<c:url value="/views/menuBoot.jsp" />'>Inicio</a>
				<button id="btn1" type="button" class=" btn-link">Iniciar
					session</button>
				<button id="btn2" type="button" class=" btn-link">Registrarse</button>
				<div class="btn-group">
					<button type="button" class="btn-link dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false">
						magocap <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href='<c:url value="/views/perfil.jsp" />'>Modificar perfil</a></li>
						<li><a href="#">Mesnsajes privados</a></li>
						<li><a href="#">Cerrar sesion</a></li>
					</ul>
				</div>
				<div class="btn-group">
					<button type="button" class="btn-link dropdown-toggle"
						data-toggle="dropdown" aria-expanded="false">
						Administrator <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Modificar perfil</a></li>
						<li><a href="#">Mesnsajes privados</a></li>
						<li><a href="#">Cerrar sesion</a></li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
