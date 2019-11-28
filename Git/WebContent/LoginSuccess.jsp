<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teste de Login</title>
</head>
<body>
	<%
		Integer login = (Integer) session.getAttribute("login");
		if (login != null) {
			out.print("<h1>Parabéns, você conseguiu conectar!</h1>");
			out.print("<br><a href=\"./Login.jsp\">Logout</a></br>");
			out.print("<a href=\"./ProdutoViewGridForm.jsp\">Vitrini</a>");
		} else {
			response.sendRedirect("./ProdutoViewGridForm.jsp");
		}
	%>
</body>
</html>