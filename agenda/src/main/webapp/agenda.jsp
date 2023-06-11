 

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
@ SuppressWarnings ("unchecked")
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");


%>
 
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Impressoras</title>
 
<link rel="stylesheet" href="style.css">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>

 
	<h1>LISTAS DE IMPRESSORAS</h1>
	<a href="novo.html" class="Botao1">Adicionar impressora</a>
	
	<a href="report" class="Botao2">Relatório</a>
	
	     
	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>IP</th>
				<th>Setor</th>
				<th>Opções</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < lista.size(); i++) {
			%>
			<tr>
				<td><%=lista.get(i).getIdcon()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getFone()%></td>
				<td><%=lista.get(i).getEmail()%></td>
				<td>
					<a href="select?idcon=<%=lista.get(i).getIdcon()%>"
					class="Botao1">Editar</a>
					<a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)"
					class="Botao2">Excluir</a>
				</td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	 
	<script src="scripts/confirmador.js"></script>
</body>
</html>
