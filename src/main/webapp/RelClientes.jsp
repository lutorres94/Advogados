<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>

<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<Cliente> lista = (ArrayList<Cliente>) request.getAttribute("clientes");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Clientes</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>

	<h1>Advogados</h1>
	<hr>
	<nav>
		<a href="index.jsp">Início</a> &nbsp; &nbsp; <a href="CadAdvogado.jsp">Cadastro
			de Advogado</a> &nbsp; &nbsp; <a href="CadCliente.jsp">Cadastro de
			Cliente </a>

	</nav>


	<div class="container">
		<table class="table table-dark">
			<thead>
				<tr>
					<th scope="col">Código</th>
					<th scope="col">Data</th>
					<th scope="col">Cliente</th>
					<th scope="col">Telefone</th>
					<th scope="col">Opções</th>
				</tr>
			</thead>
			<tbody>

				<%
				for (int i = 0; i < lista.size(); i++) {
				%>

				<tr>
					<td><%=lista.get(i).getIdcliente()%></td>
					<td><%=lista.get(i).getData()%></td>
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getTelefone()%></td>
					<td><a
						href="editarcliente?id=<%=lista.get(i).getIdcliente()%>"
						onclick="return confirm('Tem certeza que deseja editar?')">Editar</a>
						&nbsp;|&nbsp; <a
						href="apagarcliente?id=<%=lista.get(i).getIdcliente()%>"
						onclick="return confirm('Tem certeza que deseja apagar?')">Apagar</a>
					</td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>

	</div>


	<!-- JavaScript (Opcional) -->
	<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>