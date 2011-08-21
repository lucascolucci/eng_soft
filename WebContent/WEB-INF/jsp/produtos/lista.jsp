<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Alunos</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>|  Nome  |</th>
				<th>| Materia |</th>
				<th>|  Nota  |</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${produtoList}" var="produto">
				<tr>
					<td><center>${produto.nome}</center></td>
					<td><center>${produto.materia}</center></td>
					<td><center>${produto.nota}</center></td>
					<td><a href="edita?id=${produto.id}">Editar</a></td>
					<td><a href="remove?id=${produto.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<table>
		<thead>
			<tr>
				<th></th>
				<th></th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<tr>
					<td><a href="formulario?id=${produto.id}">Adicionar</a></td>
			</tr>
		</tbody>
	</table>
	<a href="/vraptor-blank-project/Projeto-Lucas.zip">Download do codigo</a>
</body>
</html>