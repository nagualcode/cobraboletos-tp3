<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title>Cobraboletos</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
	<div class="container">

		<div class="container-fluid" style="margin-top:80px">

			<c:import url="/WEB-INF/jsp/cabecalho.jsp"/>
			
	<!-- 		<p>Olá "${user.nome}" ! </p> -->
	
			<h5>Boletos: ${filtro}</h5>
			<table class="table table-striped">
			    <thead>
			      <tr>
			      	<th>Cliente:</th>
			        <th>Descrição:</th>
			        <th>Data:</th>
			        <th>Valor:</th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			  		<c:forEach var="o" items="${listaboletos}">
			  		
	
	  				  <fmt:parseDate value="${o.data}" pattern="yyyy-MM-dd" var="dataFormatada" type="date"/>
	      		  		
				      <tr>
				        <td>${o.cliente.nome}</td>
				        <td>${o.descricao}</td>
				        <td><fmt:formatDate value="${dataFormatada}" type="date" pattern="dd/MM/yyyy"/></td>
				        <td>${o.valor}</td>
				        <td><a href="/boletos/del/${o.id}">Excluir</a></td>
				      </tr>
					</c:forEach>
			    </tbody>
			  </table>
		</div>			
	</div>	
	
</body>
</html>