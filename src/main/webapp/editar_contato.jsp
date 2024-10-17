<%@page import="br.edu.ifsp.dsw1.Contato"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="contatos" class="br.edu.ifsp.dsw1.ContatosBean" scope="application"/>
<%
var id = request.getParameter("id");
boolean existe = false;
boolean editado = false;
Contato contato=null;

if(id!=null){
	Long nId = Long.parseLong(id);
	contato = contatos.buscarPorId(nId);
	if(request.getParameter("text_nome")==null){
		existe = true;
	}else{
		String strNome = request.getParameter("text_nome");
		String strEmail = request.getParameter("text_email");
		String strTelefone = request.getParameter("text_telefone");
		contato.setEmail(strEmail);
		contato.setNome(strNome);
		contato.setTelefone(strTelefone);
		editado = true;
	}
}
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Editar Contato</title>
</head>
<body>
<%if(existe){%>
	<form action="editar_contato.jsp">
		<input type="hidden" name="id" value="<%=contato.getId()%>">
		
		<label for="nome">Nome:</label>
		<input type="text" id="nome" name="text_nome" value=<%=contato.getNome()%> required="required"><br><br>
		
		<label for="telefone">Telefone:</label>
		<input type="text" id="telefone" name="text_telefone" value=<%=contato.getTelefone()%> required="required"><br><br>
		
		<label for="email">Email:</label>
		<input type="text" id="email" name="text_email" value=<%=contato.getEmail()%> required="required"><br><br>
		
		<input type="submit" value="Enviar">
	</form>
<%}else if(editado){ %>
	<h1>Contato editado com sucesso.</h1>
<%}else{ %>
	<h1>Contato não encontrado.</h1>
<%} %>
	<a href="index.jsp">Voltar</a>
</body>
</html>