<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>r Dados</title>
</head>
<body>
	<form action="adiciona">
		<fieldset>
			<legend>Adicionar Aluno/Materia/Nota</legend>
			<label for="nome">Nome:</label> <input id="nome" type="text"
				name="produto.nome" /> <label for="descricao">Materia:</label>
			<textarea id="materia" name="produto.materia"></textarea>
			<label for="nota">Nota:</label> <input id="nota" type="text"
				name="produto.nota" />
			<button type="submit">Adicionar</button>
		</fieldset>
	</form>
	<br />

	<c:forEach items="${errors}" var="error">
        ${error.category}  ${error.message}<br />
	</c:forEach>
	<br />
	
</body>
</html>