<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- 		<link rel="stylesheet" -->
<!-- 			href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
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
<script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.tooltipster.min.js"></script>
<title>Foro</title>
<script type="text/javascript">
	$(function() {
		$('#cumple').tooltipster({
			interactive : true, // crea un toolstip interactivo
			content : $('<a href="#">Java</a>')
		})
	});

	$(function() {
		$("#btn2").click(function() {
			$("#form-register").dialog("open");
		});

		$("#btn1").click(function() {
			$("#form-login").dialog("open");
		});

		$("#form-register").dialog({
			autoOpen : false,
			width : 590,
			height : 400,
			show : "scale",
			hide : "scale",
			resizable : "false",
			modal : "true"
		});

		$("#form-login").dialog({
			autoOpen : false,
			width : 250,
			height : 300,
			show : "scale",
			hide : "scale",
			resizable : "false",
			modal : "true"
		});
	});
</script>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<img src="${pageContext.request.contextPath}/imagen/foro4.jpeg"
				class="img-responsive anguloIzquierdo" alt="Responsive image"><br />
			<div align="right">
				<div class="btn-group page-header-btn" role="group" aria-label="...">
					<a class=" btn-link" href="#">Inicio</a>
					<button id="btn1" type="button" class=" btn-link">Iniciar
						session</button>
					<button id="btn2" type="button" class=" btn-link">Registrarse</button>
					<div class="btn-group">
						<button type="button" class="btn-link dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							magocap <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Modificar perfil</a></li>
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
				<div id="form-login">
					<form class="form-signin">
						<h2 class="form-signin-heading">Please sign in</h2>
						<input class="form-control" type="text" placeHolder="Usuario">
						<input class="form-control" type="password" placeHolder="Clave">
						<input value="remember-me" type="checkbox">Remember me<br />
						<button class="btn btn-mg btn-primary" type="submit">Signin</button>
					</form>
				</div>
				<div id="form-register">
					<form class="form-signin">
						<h2 class="form-signin-heading">Registrarse</h2>
						<input class="form-control" type="text" placeHolder="Email"><br />
						<input class="form-control" type="text" placeHolder="Usuario"><br />
						<input class="form-control" type="password" placeHolder="Clave"><br />
						<input class="form-control" type="password"
							placeHolder="Confirmar clave"><br />
						<button class="btn btn-mg btn-primary" type="submit">Cargar</button>
						<button class="btn btn-mg btn-primary" type="submit">Reiniciar</button>
					</form>
				</div>
			</div>
		</div>
		<div class="page-content">
			<div class="panel panel-default">
				<div class="panel-heading2">
					<h4>PROGRAMACION</h4>
				</div>
				<div class="panel-body"
					style="background-image: url('${pageContext.request.contextPath}/imagen/programacion.jpeg')">
					<div class="btn-group" role="group" aria-label="...">
						<a href="#" class="btn btn-success btn-lg" role="button">Java</a>
						<a href="#" class="btn btn-success btn-lg" role="button">PHP</a> <a
							href="#" class="btn btn-success btn-lg" role="button">.NET</a> <a
							href="#" class="btn btn-success btn-lg" role="button">C/C++</a>
					</div>
				</div>
			</div>
			<div class="panel panel-default"
				style="background-image: url('${pageContext.request.contextPath}/imagen/hardware.jpg'); background-repeat: no-repeat">
				<div class="panel-heading2">
					<h4>AYUDA TECNICA</h4>
				</div>
				<div class="panel-body">
					<div class="btn-group" role="group" aria-label="...">
						<a href="#" class="btn btn-danger btn-lg" role="button">Linux</a>
						<a href="#" class="btn btn-danger btn-lg" role="button">Winwodws</a>
						<a href="#" class="btn btn-danger btn-lg" role="button">Mac</a> <a
							href="#" class="btn btn-danger btn-lg" role="button">Hardware</a>
					</div>
				</div>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th class="active">Estadisticas</th>
						<th class="active">Cumpleaños <span
							class="label label-default" id="cumple">6</span></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="active">
							<ul class="list-group">
								<li class="list-group-item"><span class="badge">14</span>
									Temas/Discuciones</li>
								<li class="list-group-item"><span class="badge">14</span>
									Mensajes/Respuestas</li>
								<li class="list-group-item"><span class="badge">14</span>
									Usuarios registrados</li>
							</ul>
						</td>
						<td class="active">
							<p class="text-muted">Pepe (50 años)</p> <img
							src="${pageContext.request.contextPath}/imagen/hard2.jpeg"
							class="img-img-thumbnail small" alt="Responsive image">
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="page-footer">
			<div class="btn-group" role="group">
				<button type="button" class="btn-link">Contactenos</button>
				<button type="button" class="btn-link">Privacidad</button>
			</div>
		</div>
	</div>
</body>
</html>