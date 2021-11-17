<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
crossorigin="anonymous"
>
</head>
<body>
	<div class="container">
		<div class="row">
			<h1>Expression Language</h1>
			<hr />
			<p>Dados da Pesquisa</p>
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">Nome</th>
			      <th scope="col">Idade</th>
			      <th scope="col">Maior de idade?</th>
			      <th scope="col">Salário</th>
			      <th scope="col">Observações</th>
			      <th scope="col">Participação na pesquisa</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>${param.nome}</td>
			      <td>${param.idade}</td>
			      <td>${(param.idade >= 18) ? "Sim" : "Não"}</td>
			      <td>${param.salario*12}</td>
			      <td>${param.obs}</td>
			      <td>${param.pesquisa}</td>
			    </tr>
			  </tbody>
			</table>
		</div>
		<div class="row">
			<%
				session.setAttribute("nome", request.getParameter("nome"));
			%>
			<p><strong>Nome na sessão: </strong> ${sessionScope.nome }</p>
		</div>
	</div>

</body>
</html>