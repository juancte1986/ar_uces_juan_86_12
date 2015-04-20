<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<title>Java : String</title>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}js/jquery.tooltipster.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-te-1.4.0.min.js"
	charset="utf-8"></script>
<script type="text/javascript">

			$.cambiarCarecteres = function(texto) {
				$.each(texto, function(index, value) {
					if(index == 0){
						value ="";
					}
				});
				
			}
			
			$.metodo = function(lista) {
				var cadena="";
				$.each(lista, function(index, value) {
					idTema = value.tema.id,
					cadena +='<div class="panel-respuesta">';
					cadena +='<div class="panel panel-default" style:>';
					cadena +='<div class="panel-heading2">';
					cadena +='<div class="derechaFloat">#'+index+' | <a href="#">Arriba</a></div>';
					cadena +='10/02/2013';
					cadena +='</div>';
					cadena +='<div class="panel-datos">';
					cadena +='<div class="derechaFloat"> ';
					cadena +='Mensajes: 100<br/>';
					cadena +='Ubicacion: Buenos Aires<br/>';
					cadena +='Antiguedad: 4 años<br/>';
					cadena +='</div>';
					cadena +='<div style="max-width: 100px;">';
					cadena +='<div>magocap</div>';
					cadena +='<img src="${pageContext.request.contextPath}/imagen/cerrado.jpeg"class="img-img-thumbnail small" alt="Responsive image">';
					cadena +='</div>';
					cadena +='</div>';
					cadena +='<div class="panel-body">';
					cadena +='<div align="center">'+value.tema.titulo+'</div>';
					cadena +='<div>'+value.texto+'</div>';
					cadena +='</div>';
					cadena +='<div class="panel-footer">';
					cadena +='<div align="right">';
					cadena +='<button id="btn4" type="button" class=" btn-primary">Citar</button>';
					cadena +='<button type="button" class=" btn-primary btn-respuesta">Responder</button>';
					cadena +='<button id="btn5" type="button" class=" btn-primary">Denunciar</button>';
					cadena +='</div>';
					cadena +='</div>';
					cadena +='</div>';
					cadena +='</div>';
					cadena +='<div><div>';
				});
				$("#tabla").html(cadena);
			}
	
			$(document).ready(function() {
				var lista = ${respuestas};
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
				
				$(".btn-respuesta").click(function() {
					$("#form-respuesta").dialog("open");
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
				
				$("#form-respuesta").dialog({
					autoOpen : false,
					minWidth : 1000,
					minHeight: 400,
					title:'Respuesta rapida',
					show : "scale",
					hide : "scale",
					resizable : "false",
					modal : "true"
				});
			});
			
			$(function() {
				$("#btn-guardarRespuesta").click(
						function() {
							var texto = $(".jqte-respuesta").val();
							$.ajax({
								url : '<c:url value="/services/cargarRespuesta/" />'+idTema,
								type : "POST",
								data:  JSON.stringify(texto),
								dataType : "json",
								contentType : "application/json;charset=UTF-8",
								beforeSend : function() {
									$("#respuestaPostAjax").html("Sending create...");
								},
								success : function(result, status, xhr){
									var lista = result.respuestas;
									$.metodo(lista);
									
								},
								error : function(jqXHR, textStatus, errorThrown) {
									var errorHtml = "An error ocurred <br/>";
									errorHtml += "Status: " + textStatus + "<br/>";
									errorHtml += "Reason: <pre>" + errorThrown + "</pre> <br/>";
									$("#respuestaPostAjax").html(errorHtml);
								}
							});
						}
					);
			});
			
</script>
</head>
<body>
	<div class="container">
		<div class="page-header">
			<jsp:include page="/views/template/headerVertical.jsp" />
		</div>
		<div class="page-content">
			<div class="input-group search">
				<input type="text" class="form-control" placeholder="Buscar tema...">
				<span class="input-group-btn">
					<button class="btn btn-default" style= "button">Ir</button>
				</span>
			</div>
			<br />
			<div class="panel panel-default">
				<div class="panel-body">
					<nav>
						<ul class="pager">
							<li><a href='<c:url value="/listarTemas.htm" />'
								aria-label="Previous"> <span aria-hidden="true">&laquo;
										Volver</span>
							</a></li>
						</ul>
					</nav>
					<div id="tabla"></div>
					<div id="form-respuesta">
						<div class="jqte-respuesta">
							<div id="imagen"></div>
						</div>
						<script>
							$('.jqte-respuesta').jqte();
							// settings of status 
							var jqteStatus = true;
							$(".status").click(
								function() {
									jqteStatus = jqteStatus ? false: true;
									$('.jqte-respuesta').jqte({
										"status" : jqteStatus
									});
							});
						</script>
						<input type="file" id="cargarImagen">
						<div align="center" class="form-group">
							<button id="btn-guardarRespuesta" type="button"
								class="btn btn-primary">Guardar respuesta</button>
						</div>
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
		<div class="page-footer">
			<jsp:include page="/views/template/footerVertical.jsp" />
		</div>
	</div>
</body>
</html>