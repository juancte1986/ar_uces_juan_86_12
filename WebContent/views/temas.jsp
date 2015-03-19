<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test de JQuery</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/jquery-te-1.4.0.css">

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/tabla.css"
	media="screen" type="text/css" />

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

<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-te-1.4.0.min.js"
	charset="utf-8"></script>

<script type="text/javascript">
	$.metodo = function(lista) {

		var cadena = '<table>';
		cadena += '<thead>';
		cadena += '<tr>';
		cadena += '<th>Estado</th>';
		cadena += '<th>Tema / Autor</th>';
		cadena += '<th>Puntuacion</th>';
		cadena += '<th>Ultima respuesta</th>';
		cadena += '<th>Visitas</th>';
		cadena += '<th>Respuestas</th>';
		cadena += '</tr>';
		cadena += '</thead>';
		cadena += '<tbody>';
		if (lista == 0) {
			cadena += '<td colspan=6>No existen registros</td>';
		} else {
			$.each(lista, function(index, value) {
							cadena += '<tr>';
							cadena += '<td><img src="${pageContext.request.contextPath}/imagen/cerrado.jpeg" class="img-img-thumbnail small" alt="Responsive image"></td>';
							cadena += '<td>' + value.titulo + ' | '
									+ value.owner.user + '</td>';
							cadena += '<td>' + value.puntuacion + '</td>';
							cadena += '<td>Lolo Ayer 10: 45hs</td>';
							cadena += '<td>10</td>'
							cadena += '<td>200</td>';
							cadena += '</tr>';
						});
		}
		cadena += '</tbody>';
		cadena += '</table>';
		$("#tabla").html(cadena);
	}

	$(document).ready(function() {
		lista = ${temas};
		$.metodo(lista);
	});

	$(function() {
		$("#btn2").click(function() {
			$("#form-register").dialog("open");
		});

		$("#btn1").click(function() {
			$("#form-login").dialog("open");
		});

		$("#btn-tema").click(function() {
			$("#form-tema").dialog("open");
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

		$("#form-tema").dialog({
			title : "Nuevo tema java",
			autoOpen : false,
			width : 800,
			height : 370,
			show : "scale",
			hide : "scale",
			resizable : "false",
			modal : "true"
		});
	});

	$(function() {
		$("#ajaxPostButton").click(
			function() {
				var titulo = $("#tema-titulo").val();
				var tema = {}
				tema.titulo = titulo;
				$.ajax({
					url : '<c:url value="/services/newTema" />',
					type : "POST",
					data : JSON.stringify(tema),
					dataType : "json",
					contentType : "application/json;charset=UTF-8",
					beforeSend : function() {
						$("#resul").html("Sending create...");
					},
					success : function(result, status, xhr) {
						$("#form-tema").dialog("close");
						$("#form-tema").dialog("close");
						$.metodo(result.temas);
					},
					error : function(jqXHR, textStatus, errorThrown) {
						var errorHtml = "An error ocurred <br/>";
						errorHtml += "Status: " + textStatus + "<br/>";
						errorHtml += "Reason: <pre>" + errorThrown
								+ "</pre> <br/>";
						$("#resul").html(errorHtml);
					}
			});
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
				<div id="form-login" class="form-group">
					<form class="x">
						<h2 class="form-signin-heading">Please sign in</h2>
						<input class="form-control" type="text" placeHolder="Usuario">
						<input class="form-control" type="password" placeHolder="Clave">
						<input value="remember-me" type="checkbox">Remember me<br />
						<button class="btn btn-mg btn-primary" type="submit">Signin</button>
					</form>
				</div>
				<div id="form-register" class="form-group">
					<form class="x">
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
			<div class="input-group search">
				<input type="text" class="form-control" placeholder="Buscar tema...">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">Ir</button>
				</span>
			</div>
			<br />
			<div class="panel panel-default">
				<div class="panel-heading2">
					<div class="btn-group btn-right-float">
						<button type="button" class="btn-link dropdown-toggle"
							data-toggle="dropdown" aria-expanded="false">
							Herramientas <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#" id="btn-tema">Crear tema</a></li>
							<li><a href="#">Marcar como leido</a></li>
						</ul>
					</div>
					<div id="form-tema">
						<label for="titulo">Titulo</label> <input type="text"
							class="form-control" id="tema-titulo">
						<div class="jqte-test">
							<div id="imagen"></div>
						</div>
						<script>
							$('.jqte-test').jqte();
							var jqteStatus = true;
							$(".status").click(function() {
								jqteStatus = jqteStatus ? false : true;
								$('.jqte-test').jqte({
									"status" : jqteStatus
								})
							});
						</script>
						<input type="button" id="ajaxPostButton" value="Enviar" /><br />
					</div>
					Temas en el foro: JAVA
				</div>
				<div class="panel-body">
					<div class="datagrid">
						<div id="tabla"></div>
					</div>
					<div align="right">
						<nav>
						<ul class="pagination">
							<li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
						</nav>
					</div>
				</div>
				<div class="panel-footer">
					<div class="panel panel-default">
						<div class="panel-heading2">Opciones de visualizacion</div>
						<div class="panel-body2">
							<form class="form-control">
								<label for="a">Clasificado</label> <select id="a"
									class="form-size">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> <label for="b">En orden</label> <select id="b"
									class="form-size">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select> <label for="c">Desde</label> <select id="c" class="form-size">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
								</select>
								<button class="btn-primary" type="submit" class="form-size">Buscar</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="page-footer">
			<button type="button" class="btn-link">Contactenos</button>
			<a class=" btn-link" href="#">Privacidad</a>
		</div>
	</div>
</body>
</html>