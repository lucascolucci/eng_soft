<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="altera">
		<fieldset>
			<legend>Editar Produto</legend>
			<input type="hidden" name="produto.id" value="${produto.id }" /> <label
				for="nome">Nome:</label> <input id="nome" type="text"
				name="produto.nome" value="${produto.nome}" /> <label
				for="materia">Materia:</label>
			<textarea id="descricao" name="produto.descricao">${produto.materia}</textarea>
			<label for="nota">Nota:</label> <input id="nota" type="text"
				name="produto.nota" value="${produto.nota}" />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
</body>
</html>