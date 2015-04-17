<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
</head>
<body>
	<div class="panel panel-default">
		<div class="panel-heading2">Respuesta rapida</div>
		<div class="panel-body">
			<form>
				<div class="jqte-respuesta">
					<div id="imagen"></div>
				</div>
				<script> 
						$('.jqte-respuesta').jqte();  
//  						settings of status 
							var jqteStatus = true; 
						$(".status").click(function() 
								{ 
							jqteStatus = jqteStatus ? false : true;  
							$('.jqte-respuesta').jqte({"status" : jqteStatus}) ; 
						}); 
					</script>
				<input type="file" id="cargarImagen">
				<div align="center" class="form-group">
					<button id="btn-respuesta" type="submit" class="btn btn-primary">Guardar
						respuesta</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>