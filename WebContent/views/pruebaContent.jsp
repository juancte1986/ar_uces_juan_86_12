<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$("#button-vista-previa").click(
			function() {
				var texto = $('.jqte-test').val();
			    $(".editor").jqteVal(texto);
			    $("#admin-mode").attr('contenteditable',false);
		});
		
		var isAdminMode = false;
		$("#admin-mode").click(function(){
		  if(isAdminMode){
		    console.log(isAdminMode);
		    isAdminMode = false;
		    $("#admin-mode").html("Admin Mode: Off");
		    $("p").attr('contentEditable',false);
		    $("li").attr('contentEditable',false);
		    $("h1").attr('contentEditable',true);
		  } else {
		    console.log(isAdminMode);
		    isAdminMode = true;
		    $("#admin-mode").html("Admin Mode: On");
		    $("p").attr('contentEditable',true);
		    $("li").attr('contentEditable',true);
		    $("h1").attr('contentEditable',true);
		    $("#admin-mode").attr('contentEditable',false);
		  }
		});
	});
</script>
</head>
<body>
	<h1 id="logo">
		// My Website <span id="admin-mode">Admin Mode: Off</span>
	</h1>

	<ul>
		<li>This</li>
		<li>Would Be</li>
		<li>My Navigation</li>
		<li>If I Were</li>
		<li>To Actually</li>
		<li>Have One</li>
	</ul>

	<p>This is a quick test to demonstrate contenteditable, and the
		possibility of using it to implement a CMS for simple editing of page
		content. Of course it would have to be plugged into the back end of
		the site, sent the html to the database, etc., but it serves well as a
		proof of concept.</p>

	<p>Click the Admin Mode button at the top-right to turn on/off
		"Admin Mode" to apply or remove contenteditable. Essentially the idea
		is that a typical user would be presented with the normal (Admin Mode
		Off) page, while the back end would be the exact same page, but with
		contenteditable added to the elements.</p>
</body>
</html>