<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TESTS</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/hello" method="post">
		Nome: <input type="text" name="nome" />
		<br/>
		Sobrenome: <input type="text" name="sobrenome"/>
		<br/>
		<input type="submit" name="enviar algo" values="Submeter"/>
	</form>

</body>
</html>