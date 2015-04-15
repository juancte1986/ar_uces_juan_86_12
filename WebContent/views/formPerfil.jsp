<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/estilos/jquery-te-1.4.0.css">
<!-- <link rel="stylesheet" -->
<!-- 	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
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
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tooltipster.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-te-1.4.0.min.js" charset="utf-8"></script>
<script type="text/javascript">
$(function(){
	$("#btn-vista-previa").click(
		function() {
			var texto = $('.jqte-test').val();
// 		    $(".test").jqteVal(texto);
			$(".area-visualizar").html(texto);
	});
});
</script>
</head>
<body>
<!-- 	<div id="form-edit-info-perfil" class="panel panel-default"> -->
<!-- 		<div class="panel-heading2">Editar tu info magocap</div> -->
<!-- 		<div class="panel-body"> -->
<!-- 			<div class="divHijo"> -->
<!-- 				<form> -->
<!-- 					<fieldset class="form-control scheduler-border"> -->
<!-- 						<legend class="form-control scheduler-border"> -->
<!-- 							<h4>Datos personales</h4> -->
<!-- 						</legend> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="exampleInputEmail1">Nombre</label> <input -->
<!-- 								type="email" class="form-control" id="exampleInputEmail1" -->
<!-- 								placeholder="Enter email"> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="exampleInputPassword1">Apellido</label> <input -->
<!-- 								type="password" class="form-control" id="exampleInputPassword1" -->
<!-- 								placeholder="Password"> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="fecha">Fecha de Nacimiento</label> -->
<!-- 							<div id="fecha" class="form-inline"> -->
<!-- 								<div class="form-group"> -->
<!-- 									<label for="dia">Dia</label> <select id="dia" -->
<!-- 										class="form-control"> -->
<!-- 										<option>1</option> -->
<!-- 									</select> -->
<!-- 								</div> -->
<!-- 								<div class="form-group"> -->
<!-- 									<label for="dia">Mes</label> <select id="mes" -->
<!-- 										class="form-control"> -->
<!-- 										<option>1</option> -->
<!-- 									</select> -->
<!-- 								</div> -->

<!-- 								<div class="form-group"> -->
<!-- 									<label for="anio">Año</label> <select id="anio" -->
<!-- 										class="form-control"> -->
<!-- 										<option>1</option> -->
<!-- 									</select> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</fieldset> -->
<!-- 					<fieldset class="form-control scheduler-border"> -->
<!-- 						<legend class="form-control scheduler-border"> -->
<!-- 							<h4>Otros datos</h4> -->
<!-- 						</legend> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="perfil-biografia">Biografia</label> -->
<!-- 							<textarea class="form-control" id="perfil-biografia"></textarea> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="perfil-biografia">Ocupacion</label> -->
<!-- 							<textarea class="form-control" id="perfil-biografia"></textarea> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="perfil-biografia">Interes general</label> -->
<!-- 							<textarea class="form-control" id="perfil-biografia"></textarea> -->
<!-- 						</div> -->
<!-- 					</fieldset> -->
<!-- 					<div align="center" class="form-group"> -->
<!-- 						<button type="submit" class="btn btn-primary">Guardar</button> -->
<!-- 						<button type="reset" class="btn btn-primary">Resetear</button> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div id="form-edit-foto-perfil" class="panel panel-default"> -->
<!-- 		<div class="panel-heading2">Editar foto de perfil magocap</div> -->
<!-- 		<div class="panel-body"> -->
<!-- 			<div class="divHijo"> -->
<!-- 				<form> -->
<!-- 					<fieldset class="form-control scheduler-border"> -->
<!-- 						<legend class="form-control scheduler-border"> Foto de -->
<!-- 							perfil </legend> -->
<!-- 						<div> -->
<!-- 							<img id="imag" -->
<%-- 								src="${pageContext.request.contextPath}/imagen/images.png" --%>
<!-- 								class="img-thumbnail" alt="Foto"> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="exampleInputFile">Subir imagen</label> <input -->
<!-- 									type="file" id="exampleInputFile"> -->
<!-- 								<p class="help-block">Nota: El tamaño máximo de tu imagen -->
<!-- 									personal es de 200 por 200 píxeles o 19,5 KB (Kilobytes) -->
<!-- 									(cualquiera que sea más pequeña).</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</fieldset> -->
<!-- 					<div align="center" class="form-group"> -->
<!-- 						<button type="submit" class="btn btn-primary">Guardar -->
<!-- 							cambios</button> -->
<!-- 						<button type="reset" class="btn btn-primary">Reestablece -->
<!-- 							campos</button> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div id="form-edit-avatar" class="panel panel-default"> -->
<!-- 		<div class="panel-heading2">Editar avatar magocap</div> -->
<!-- 		<div class="panel-body"> -->
<!-- 			<div class="divHijo"> -->
<!-- 				<form> -->
<!-- 					<fieldset class="form-control scheduler-border"> -->
<!-- 						<legend class="form-control scheduler-border"> Avatar </legend> -->
<!-- 						<div> -->
<!-- 							<img id="imag" -->
<%-- 								src="${pageContext.request.contextPath}/imagen/avatar" --%>
<!-- 								class="img-thumbnail" alt="No tiene cargado ningun Avatar"> -->
<!-- 							<div class="checkbox"> -->
<!-- 								<label> <input type="checkbox"> Usar avatar -->
<!-- 								</label> -->
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="exampleInputFile">Subir avatar</label> <input -->
<!-- 									type="file" id="exampleInputFile"> -->
<!-- 								<p class="help-block">Nota: El tamaño máximo de tu imagen -->
<!-- 									personal es de 50 por 50 píxeles o 14,6 KB (Kilobytes) -->
<!-- 									(cualquiera que sea más pequeña)</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</fieldset> -->
<!-- 					<div align="center" class="form-group"> -->
<!-- 						<button type="submit" class="btn btn-primary">Guardar -->
<!-- 							cambios</button> -->
<!-- 						<button type="reset" class="btn btn-primary">Reestablece -->
<!-- 							campos</button> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<div id="form-edit-emailYPass" class="panel panel-default"> -->
<!-- 		<div class="panel-heading2">Editar email y contraseña magocap</div> -->
<!-- 		<div class="panel-body"> -->
<!-- 			<div class="divHijo"> -->
<!-- 				<form> -->
<!-- 					<fieldset class="form-control scheduler-border"> -->
<!-- 						<legend class="form-control scheduler-border"> Editar -->
<!-- 							contraseña(opcional) </legend> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="exampleInputPassword1">Nueva contraseña</label> <input -->
<!-- 								type="password" class="form-control inputInicio" -->
<!-- 								id="exampleInputPassword1" placeholder="Contraseña"> -->
<!-- 						</div> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="exampleInputPassword1">Confirmar nueva -->
<!-- 								contraseña</label> <input type="password" -->
<!-- 								class="form-control inputInicio" id="exampleInputPassword1" -->
<!-- 								placeholder="Confirmar contraseña"> -->
<!-- 						</div> -->
<!-- 					</fieldset> -->
<!-- 					<fieldset class="form-control scheduler-border"> -->
<!-- 						<legend class="form-control scheduler-border"> Editar -->
<!-- 							correo electronico(opcional) </legend> -->
<!-- 						<div class="form-group"> -->
<!-- 							<label for="exampleInputEmail1">Nuevo correo electronico</label> -->
<!-- 							<input type="email" class="form-control inputInicio" -->
<!-- 								id="exampleInputEmail1" placeholder="Enter email"> -->
<!-- 						</div> -->
<!-- 					</fieldset> -->
<!-- 					<div align="center" class="form-group"> -->
<!-- 						<button type="submit" class="btn btn-primary">Guardar -->
<!-- 							cambios</button> -->
<!-- 						<button type="reset" class="btn btn-primary">Reestablece -->
<!-- 							campos</button> -->
<!-- 					</div> -->
<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
	<div id="form-edit-emailYPass" class="panel panel-default">
		<div class="panel-heading2">Editar Firma magocap</div>
		<div class="panel-body">
			<div class="divHijo">
				<form>
					<fieldset class="form-control scheduler-border">
						<legend class="form-control scheduler-border"> Tu firma </legend>
							<div class="jqte-test">
								<div id="imagen"></div>
							</div>
							<script> 
								$('.jqte-test').jqte({link: false});  
//  									settings of status 
								var jqteStatus = true; 
								$(".status").click(function() 
 									{ 
										jqteStatus = jqteStatus ? false : true;  
										$('.jqte-test').jqte({"status" : jqteStatus}) ; 
									}); 
							</script> 
							<input type="file" id="cargarImagen">
					</fieldset>
					<div align="center" class="form-group">
						<button type="submit" class="btn btn-primary">Guardar
							cambios</button>
						<button type="button" id="btn-vista-previa"
							class="btn btn-primary">Vista previa de la firma</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="form-edit-emailYPass" class="panel panel-default">
		<div class="panel-heading2">Previsualizar firma</div>
		<div class="panel-body">
				<div class="area-visualizar">
				</div>
			<div align="center" class="form-group">
				<button type="submit" class="btn btn-primary">Cancelar</button>
			</div>
		</div>
	</div>
</body>
</html>