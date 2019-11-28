$(document).ready(function() {

	$.fn.loginMessage = function(msg) {
		$('#formLoginText').html(msg);
		$('#formLoginMessage').slideDown().delay(2000).slideUp();
	}

	$('#btnLogin').click(function() {
		if ($('#email').val() == '' || $('#password').val() == '') {
			$.fn.loginMessage("Preencha os campos e-mail e senha!");
		} else {
			$.ajax({
				type : "POST",
				url : "LoginController",
				data : $('#formLogin').serialize(),
				dataType : "json"
			}).done(function(d) {
				if (d.status == true) {
					// página inicial após o login
					window.location = './LoginSuccess.jsp';
				} else {
					$.fn.loginMessage("Usuário/Senha inválidos!");
				}
			}).fail(function() {
				$.fn.loginMessage("Falha na conexão!");
			});
		}
	});
});