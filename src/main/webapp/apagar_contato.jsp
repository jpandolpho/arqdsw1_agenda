<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="contatos" class="br.edu.ifsp.dsw1.ContatosBean" scope="application"/>
<%
var id = request.getParameter("id");
boolean sucesso = false;

if(id!=null){
	Long nId = Long.parseLong(id);
	var contato = contatos.buscarPorId(nId);
	contatos.apagar(contato);
	sucesso = true;
}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if(sucesso){%>
	<h1>Contato apagado com sucesso.</h1>
<%}else{ %>
	<h1>Contato não encontrado.</h1>
<%} %>
	<a href="index.jsp">Voltar</a>
</body>
</html>