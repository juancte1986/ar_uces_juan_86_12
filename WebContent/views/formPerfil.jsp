<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	</head>
<body>
	<div class="divHijo">
		<form>
			<fieldset class="form-control scheduler-border">
				<legend class="form-control scheduler-border">
					<h4>Datos personales</h4>
				</legend>
				<div class="form-group">
					<label for="exampleInputEmail1">Nombre</label> <input type="email"
						class="form-control" id="exampleInputEmail1"
						placeholder="Enter email">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Apellido</label> <input
						type="password" class="form-control" id="exampleInputPassword1"
						placeholder="Password">
				</div>
				<div class="form-group">
					<label for="fecha">Fecha de Nacimiento</label>
					<div id="fecha" class="form-inline">
						<div class="form-group">
							<label for="dia">Dia</label> <select id="dia"
								class="form-control">
								<option>1</option>
							</select>
						</div>
						<div class="form-group">
							<label for="dia">Mes</label> <select id="mes"
								class="form-control">
								<option>1</option>
							</select>
						</div>

						<div class="form-group">
							<label for="anio">Año</label> <select id="anio"
								class="form-control">
								<option>1</option>
							</select>
						</div>
					</div>
				</div>
			</fieldset>
			<fieldset class="form-control scheduler-border">
				<legend class="form-control scheduler-border">
					<h4>Otros datos</h4>
				</legend>
				<div class="form-group">
					<label for="perfil-biografia">Biografia</label>
					<textarea class="form-control" id="perfil-biografia"></textarea>
				</div>
				<div class="form-group">
					<label for="perfil-biografia">Ocupacion</label>
					<textarea class="form-control" id="perfil-biografia"></textarea>
				</div>
				<div class="form-group">
					<label for="perfil-biografia">Interes general</label>
					<textarea class="form-control" id="perfil-biografia"></textarea>
				</div>
			</fieldset>
			<div align="center" class="form-group">
					<button type="submit" class="btn btn-primary">Guardar</button>
					<button type="reset" class="btn btn-primary">Resetear</button>
			</div>
		</form>
	</div>
</body>
</html>