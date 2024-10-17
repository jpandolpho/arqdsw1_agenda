<%@page import="br.edu.ifsp.dsw1.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="contatos" class="br.edu.ifsp.dsw1.ContatosBean" scope="application"/>
<jsp:useBean id="contato" class="br.edu.ifsp.dsw1.Contato" scope="request"/>
<jsp:setProperty name="contato" property="*"/>
<%
boolean inserido = false;

if(contato.getNome()!=null){
	contatos.insere(contato);
	inserido = true;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Novo Contato</title>
</head>
<body>
	<%if(!inserido){ %>
	<form action="novo_contato.jsp">
		<label for="nome">Nome:</label>
		<input type="text" id="nome" name="nome" required="required"><br><br>
		
		<label for="telefone">Telefone:</label>
		<input type="text" id="telefone" name="telefone" required="required"><br><br>
		
		<label for="email">Email:</label>
		<input type="text" id="email" name="email" required="required"><br><br>
		
		<input type="submit" value="Enviar">
	</form>
	<%} else { %>
	<h1>Contato inserido com sucesso.</h1>
	<a href="index.jsp">Voltar</a>
	<%} %>
</body>
</html>