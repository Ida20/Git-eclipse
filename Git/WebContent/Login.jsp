<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	session.setAttribute("login", false);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="Login.css">
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="Login.js"></script>
</head>
<body>
	<div class="container col-xs-12 col-sm-5 col-md-4 col-lg-3 centered">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<span> <i class="glyphicon glyphicon-log-in"></i>
					&nbsp;&nbsp;Controle de Acesso
				</span>
			</div>
			<form id="formLogin" role="form" class="panel-body">
				<div class="input-group form-group">
					<span class="input-group-addon"> <i
						class="glyphicon glyphicon-user"></i></span> <input id="email"
						name="email" type="email" class="form-control" value=""
						placeholder="Email Address">
				</div>

				<div class="input-group form-group">
					<span class="input-group-addon"> <i
						class="glyphicon glyphicon-lock"></i></span> <input id="password"
						name="password" type="password" class="form-control" value=""
						placeholder="Password">
				</div>
				<button type="button" class="btn btn-primary" id="btnLogin">Login</button>
			</form>
		</div>
		<div class="alert alert-danger" id="formLoginMessage"
			style="display: none;">
			<strong id="alertType">Erro</strong>: <span id="formLoginText"></span>
		</div>
	</div>
	<div class="modal hide" id="pleaseWaitDialog" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-header">
			<h1>Aguarde ...</h1>
		</div>
		<div class="modal-body">
			<div class="progress progress-striped active">
				<div class="bar" style="width: 100%;"></div>
			</div>
		</div>
	</div>
</body>
</html>