<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<!-- 		<link rel="stylesheet" -->
		<!-- 			href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
		<link type="text/css" rel="stylesheet"
			href="${pageContext.request.contextPath}/estilos/jquery-te-1.4.0.css">
		<link rel="stylesheet"
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
		<script type="text/javascript" src="js/jquery.tooltipster.min.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/jquery-te-1.4.0.min.js"
			charset="utf-8"></script>
		<title>Java : String</title>
		<script type="text/javascript">
		
			$.metodo = function(lista) {
	
				var cadena = '<table>';

				$.each(lista, function(index, value) {
					cadena += '<thead>';
					cadena += '<tr>';
					cadena += '<th>10/02/2013<div class="derechaFloat">#'+index+' | <a href="#">Inicio</a></div></th>' ;
					cadena += '</tr>';
					cadena += '</thead>';
					
					cadena += '<tbody>';
					
					cadena += '<tr style="background-color: #dfe3ee">';
					cadena += '<div class="derechaFloat"> Mensajes: 100<br/>Ubicacion: Buenos Aires<br/>Antiguedad: 4 años<br/></div>';
					cadena += '<div style="width: 100px;"><div class="derechaFloat"><H4>pepe</H4></div>'
						+'<img src="${pageContext.request.contextPath}/imagen/cerrado.jpeg"class="img-img-thumbnail small" alt="Responsive image">'
						+'</div>'; //Datos del usuario
					cadena += '</tr>';
					
					cadena += '<tr>';
					cadena += '<th><div align="center">'+ value.tema.titulo+'</div></th>';
					cadena += '</tr>';//titulo
					
					cadena += '</tr>';
					cadena += '<td>' +value.texto+'</td>';
					cadena += '</tr>';
					
					cadena +='<tr>';
					cadena +='<div align="right"><div class="btn-group page-header-btn" role="group"aria-label="...">'
						+'<a class=" btn-link" href="#">Inicio</a><button id="btn4" type="button" class="btn-primary">Citar</button>'
						+'<div id="form-mensaje"><div class="jqte-test"><div id="imagen"></div></div>'
						+'<button type="button" class="btn-primary">Guardar</button>'
						+'</div>'
			   			+'<button id="btn5" type="button" class="btn-primary">Me gusta</button>'
			   			+'</div>'
			   			+'</div>'
			   			+'</td>'
			   			+'</tr>';
					cadena += '</tbody>';
				});
				cadena += '</table>';
				$("#tabla").html(cadena);
			}
	
			$(document).ready(function() {
				lista = ${respuestas};
				$.metodo(lista);
			});

			$(function() {
				$("#btn2").click(function() {
					$("#form-register").dialog("open");
				});
		
				$("#btn1").click(function() {
					$("#form-login").dialog("open");
				});
				
				$("#btn4").click(function() {
					$("#form-mensaje").dialog("open");
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
				
				$("#form-mensaje").dialog({
					autoOpen : false,
					width : 600,
					height : 350,
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
				<div class="page-content">
				<div class="input-group search">
					<input type="text" class="form-control"
						placeholder="Buscar tema..."> <span
						class="input-group-btn">
						<button class="btn btn-default" type="button">Ir</button>
					</span>
				</div><br/>
				<div class="panel panel-default">
						<div class="panel-body">
							<nav>
								<ul class="pager">
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">&laquo; Volver</span>
									</a></li>
								</ul>
							</nav>
							<div class="datagrid">
								<div id="tabla"></div>
<!-- 								<table> -->
<!-- 									<thead> -->
<!-- 										<tr> -->
<!-- 											<th>10/02/2013<div class="derechaFloat">#1 | Arriba</div></th> -->
<!-- 										</tr> -->
<!-- 									</thead> -->
<!-- 									<tbody> -->
<!-- 										<tr style="background-color: #dfe3ee"> -->
<!-- 											<td> -->
<!-- 												<div class="derechaFloat"> -->
<!-- 													Mensajes: 100<br/> -->
<!-- 													Ubicacion: Buenos Aires<br/> -->
<!-- 													Antiguedad: 4 años<br/> -->
<!-- 												</div> -->
<!-- 												<div style="width: 100px;"> -->
<!-- 													<div class="derechaFloat"> -->
<!-- 														<H4>pepe</H4> -->
<!-- 													</div> -->
<%-- 													<img src="${pageContext.request.contextPath}/imagen/cerrado.jpeg" --%>
<!-- 														class="img-img-thumbnail small" alt="Responsive image"> -->
<!-- 												</div> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<td><p class="text-center">Ya llego java 7</p><br/></td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<td>Amigos ya llego la nueva version de java!<br/> Saludos,</td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<td> -->
<!-- 												<div align="right"> -->
<!-- 													<div class="btn-group page-header-btn" role="group" -->
<!-- 														aria-label="..."> -->
<!-- 														<a class=" btn-link" href="#">Inicio</a> -->
<!-- 														<button id="btn4" type="button" class="btn-primary">Citar</button> -->
<!-- 															<div id="form-mensaje"> -->
<!-- 																<div class="jqte-test"> -->
<!-- 																	<div id="imagen"></div> -->
<!-- 															    </div> -->
<!-- 																<script> -->
// 																	$('.jqte-test').jqte();
// 																	var jqteStatus = true;
// 																	$(".status").click(function() {
// 																		jqteStatus = jqteStatus ? false : true;
// 																		$('.jqte-test').jqte({
// 																			"status" : jqteStatus
// 																		})
// 																	});
<!-- 															 	</script> -->
<!-- 															 	<button type="button" class="btn-primary">Guardar</button> -->
<!-- 															</div> -->
<!-- 													   	<button id="btn5" type="button" class="btn-primary">Me gusta</button> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 											</td> -->
<!-- 										</tr> -->
<!-- 									</tbody> -->
<!-- 								</table> -->
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
							<nav>
								<ul class="pager">
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">Te gusto el tema</span>
									</a></li>
									<li><a href="#" aria-label="Previous"> <span
											aria-hidden="true">No te gusto el tema</span>
									</a></li>
								</ul>
							</nav>
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