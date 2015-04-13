<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
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
		<title>Foro</title>
		<script type="text/javascript">
			$(function() {
				$('#cumple').tooltipster({
					interactive : true, // crea un toolstip interactivo
					content : $('<a href="#">Java</a>')
				});
			});
		</script>
	</head>
	<body>
		<div class="container">
				<div class="page-header">
					<jsp:include page="/views/template/headerVertical.jsp"/> 
		<%-- 			 <jsp:include page="/views/template/headerVertical.jsp"/> --%>
					<%-- jsp:include page="display.jsp">  --%>
					<%-- <jsp:param name="userid" value="Chaitanya" />  --%>
					<%-- <jsp:param name="password" value="Chaitanya" />  --%>
					<%-- <jsp:param name="name" value="Chaitanya Pratap Singh" />  --%>
					<%-- <jsp:param name="age" value="27" />  --%>
					<%-- </jsp:include>  --%>
			</div>
			<div class="page-content">
				<div id="form-login">
					<div class="panel panel-default">
						<div class="panel-heading2">
							<h4>Iniciar sesion</h4>
						</div>
						<div class="panel-body">
							<form>
								<div class="form-group">
<!--     								<label for="exampleInputUsuario">Usuario</label> -->
    								<input type="text" class="form-control inputInicio" id="exampleInputUsuario" placeholder="Usuario">
 								 </div>
								<div class="form-group">
<!--     								<label for="exampleInputPassword1">Contraseña</label> -->
    								<input type="password" class="form-control inputInicio" id="exampleInputPassword1" placeholder="Contraseña">
 								 </div>
								<div class="checkbox">
									<label> <input type="checkbox"> Remember me
									</label>	
								</div>
								<button type="submit" class="btn btn-primary">Sign in</button>
							</form>
						</div>
					</div>
				</div>
				<div id="form-register">
					<div class="panel panel-default">
						<div class="panel-heading2">
							<h4>Registrarse</h4> 	
						</div>
						<div class="panel-body">
							<form>
								<div class="form-group">
<!-- 									<label for="exampleInputEmail1">Tu correo electronico</label>  -->
									<input
										type="email" class="form-control inputInicio" id="exampleInputEmail1"
										placeholder="Enter email">
								</div>
								<div class="form-group">
<!--     								<label for="exampleInputUsuario">Usuario</label> -->
    								<input type="text" class="form-control inputInicio" id="exampleInputUsuario" placeholder="Usuario">
 								 </div>
								<div class="form-group">
<!--     								<label for="exampleInputPassword1">Contraseña</label> -->
    								<input type="password" class="form-control inputInicio" id="exampleInputPassword1" placeholder="Contraseña">
 								 </div>
								<div class="form-group">
<!--     								<label for="exampleInputPassword2">Confirmar contraseña</label> -->
    								<input type="password" class="form-control inputInicio" id="exampleInputPassword2" placeholder="Contraseña">
 								 </div>
								<button type="submit" class="btn btn-primary">Guardar</button>
								<button type="submit" class="btn btn-primary">Reiniciar</button>
							</form>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading2">
						<h4>PROGRAMACION</h4>
					</div>
					<div class="panel-body"
						style="background-image: url('${pageContext.request.contextPath}/imagen/programacion.jpeg')">
						<div class="btn-group" role="group" aria-label="...">
							<a href='<c:url value="/listarTemas.htm" />' class="btn btn-success btn-lg" role="button">Java</a>
							<a href="#" class="btn btn-success btn-lg" role="button">PHP</a> <a
								href="#" class="btn btn-success btn-lg" role="button">.NET</a> <a
								href="#" class="btn btn-success btn-lg" role="button">C/C++</a>
						</div>
					</div>
				</div>
<!-- 				<div class="panel panel-default" -->
<%-- 					style="background-image: url('${pageContext.request.contextPath}/imagen/hardware.jpg'); background-repeat: no-repeat"> --%>
<!-- 					<div class="panel-heading2"> -->
<!-- 						<h4>AYUDA TECNICA</h4> -->
<!-- 					</div> -->
<!-- 					<div class="panel-body"> -->
<!-- 						<div class="btn-group" role="group" aria-label="..."> -->
<!-- 							<a href="#" class="btn btn-danger btn-lg" role="button">Linux</a> -->
<!-- 							<a href="#" class="btn btn-danger btn-lg" role="button">Winwodws</a> -->
<!-- 							<a href="#" class="btn btn-danger btn-lg" role="button">Mac</a> <a -->
<!-- 								href="#" class="btn btn-danger btn-lg" role="button">Hardware</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
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
				<jsp:include page="/views/template/footerVertical.jsp"/>
			</div>
		</div>
	</body> 
</html>