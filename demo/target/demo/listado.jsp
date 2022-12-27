<%@page import="java.util.List"%>
<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>

<head>
	<%@include file="head.jsp" %>	
</head>

<body id="body-listado">
	<!-- ACA VA EL NAVBAR  -->
	<%@include file="navbar.jsp" %>
	<main class="mt-5 py-3">
		<div class="container-fluid py-3 bg-danger bg-gradient shadow-lg">
			<h1 id="h1-listado" class="text-center text-light shadow-lg py-2">Lista de Componentes</h1>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md">
					<div class="table-responsive">
						<table class="table table-hover mt-5">
							<thead class="table-dark">
								<tr>
								<th scope="col">ID</th>
								<th scope="col">NOMBRE</th>
								<th scope="col">MODELO</th>
								<th scope="col">PRECIO</th>
								<th scope="col">C&Oacute;DIGO</th>
								<th scope="col">&nbsp;</th>
								</tr>
							</thead>
							<% 
								//codigo java
								//obtener el listado desde el request
								//se guardo bajo el nombre de "listado"
								List<Producto> listado = (List<Producto>)request.getAttribute("listado");
							%>
							<tbody>
								<!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
								<%
									for( Producto  unProducto : listado) {
								%>
								<tr>
								<th scope="row" class="text-warning table-dark"><em> <%=unProducto.getIdProducto()%></em></th>
								<td class="table-secondary"><%=unProducto.getNombre() %></td>
								<td class="table-dark"><%=unProducto.getModelo() %></td>
								<td class="table-secondary"><em><b>$</b></em> <%=unProducto.getPrecio() %></td>
								<td class="table-dark"><i><%=unProducto.getCodigo() %></i></td>
								<td class="table-secondary">
									<a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unProducto.getIdProducto()%>" role="button">Eliminar</a> | 
									<a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unProducto.getIdProducto()%>" role="button">Editar</a>
								</td>
								</tr>
								<%
									}
								%>
							</tbody>
							</table>
					</div>
				</div>
			</div>	
		</div>
	</main>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>	
</html>