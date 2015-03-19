<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Test de JQuery</title>
		<script src="https://code.jquery.com/jquery-1.10.2.js"></script> 
		<script type="text/javascript">
			$(function(){
				$("#ajaxPostButton").click(
						function() {
							var value = $("#somethingValue").val();
							var something = {};
							something.value = value
							$.ajax({
								url : '<c:url value="/services/newTema" />',
								type : "POST",
								data:  JSON.stringify(something),
								dataType : "json",
								contentType : "application/json;charset=UTF-8",
								beforeSend : function() {
									$("#respuestaPostAjax").html("Sending create...");
								},
								success : function(result, status, xhr){
									aux = "Creado el something con id <u>";
									aux +=  result.something.id;
									aux +=  "</u> y valor <u>";
									aux +=  result.something.value;
									aux +=  "</u>";
									$("#respuestaPostAjax").html(aux);
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
		<h2>Post de creación por AJAX</h2>
		<input type="text" id="somethingValue" value="Un valor" />
		<br />
		<input type="button" id="ajaxPostButton" value="Crear Something" />
		<br />
		<div id="respuestaPostAjax">Sin respuesta</div>
	</body>
</html>