<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	  <title>Bootstrap Example</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	  <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
	</head>
	<body>	
<!-- 		<div class="container-fluid"> -->
<!-- 		  <h1>Hello World!</h1> -->
<!-- 		  <p>Resize the browser window to see the effect.</p> -->
<!-- 		  <div class="row"> -->
<!-- 		    <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div> -->
<!-- 		    <div class="col-sm-4" style="background-color:lavenderblush;">.col-sm-4</div> -->
<!-- 		    <div class="col-sm-4" style="background-color:lavender;">.col-sm-4</div> -->
<!-- 		    <button type="button" class="btn btn-default btn-lg">Default</button> -->
<!-- 		  </div> -->
<!-- 		</div> -->
	<button id="opener">open the dialog</button>
	<div id="dialog" title="Dialog Title">I'm a dialog</div>
	<script>
		$( "#dialog" ).dialog({ autoOpen: false });
		$( "#opener" ).click(function() {
			$( "#dialog" ).dialog( "open" );
		});
	</script>
	</body>
</html>