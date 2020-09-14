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
			
			<!--  <p>Cliente: ${idcliente}</p>  -->
			
			<form class="form-inline" action="/boletos/add/${idcliente}" method="post">
				
	
			  <label for="data" class="mr-sm-2">Vencimento:</label>
			  <input type="date" class="form-control mb-2 mr-sm-2" name="data">
			  
			  <label for="descricao" class="mr-sm-2">Descrição:</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" placeholder="Entre com a descrição" name="descricao">
	
			  <label for="valor" class="mr-sm-2">Valor:</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" placeholder="Entre com o valor" name="valor">
	
			  <button type="submit" class="btn btn-primary mb-2">Emitir</button>
			</form>	
	

		</div>			
	</div>	
	
</body>
</html>