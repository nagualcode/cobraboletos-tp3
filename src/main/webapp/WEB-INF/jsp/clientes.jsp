<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
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

<button data-toggle="collapse" data-target="#demo">Cadastrar novo</button>

<div id="demo" class="collapse">
			<form action="/clientes/add" method="post">
			
			  <div class="form-group">
			    <label for="usr">Nome:</label>
			    <input type="text" class="form-control" name="nome">
			  </div>
			
			  <div class="form-group">
			    <label for="usr">Razao Social:</label>
			    <input type="text" class="form-control" name="razaosocial">
			  </div>
			  
			  			  <div class="form-group">
			    <label for="usr">cnpj:</label>
			    <input type="text" class="form-control" name="cnpj">
			  </div>
			
						  <div class="form-group">
			    <label for="usr">logradouro:</label>
			    <input type="text" class="form-control" name="logradouro">
			  </div>
			
						  <div class="form-group">
			    <label for="usr">complemento:</label>
			    <input type="text" class="form-control" name="complemento">
			  </div>
			
						  <div class="form-group">
			    <label for="usr">bairro:</label>
			    <input type="text" class="form-control" name="bairro">
			  </div>
			
						  <div class="form-group">
			    <label for="usr">municipio:</label>
			    <input type="text" class="form-control" name="municipio">
			  </div>
			
						  <div class="form-group">
			    <label for="usr">uf:</label>
			    <input type="text" class="form-control" name="uf">
			  </div>
			
						  <div class="form-group">
			    <label for="usr">cep:</label>
			    <input type="text" class="form-control" name="cep">
			  </div>
			
						  <div class="form-group">
			    <label for="usr">telefone:</label>
			    <input type="text" class="form-control" name="telefone">
			  </div>
			
						  <div class="form-group">
			    <label for="usr">email:</label>
			    <input type="text" class="form-control" name="email">
			  </div>
			
			

			
			  <button type="submit" class="btn btn-primary">Cadastrar</button>
			</form>
</div>

			<table class="table table-striped">
			    <thead>
			      <tr>
			   
			        <th>Id:</th>
			        <th>Nome Fantasia:</th>
			        <th>Razao Social:</th>
			        <th>Cnpj:</th>
			        <th>Email:</th>
			        <th></th>
			        <th></th>

			      </tr>
			    </thead>
			    <tbody>
			  		<c:forEach var="o" items="${listaClientes}">
				      <tr>
				        <td>${o.id}</td>
				        <td>${o.nome}</td>
				        <td>${o.razaosocial}</td>
				        <td>${o.cnpj}</td>
				        <td>${o.email}</td>
				        <td><a href="/clientes/del/${o.id}">Excluir</a></td>
				        <td><a href="/boletos/new/${o.id}">Cobrar</a></td>
				      </tr>
					</c:forEach>
			    </tbody>
			  </table>
			
  		</div>
	</div>

</body>
</html>