<%@page import="java.util.List"%>
<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
	<head>
		<%@include file="head.jsp"%>	
	</head>
	
	<body style="background: linear-gradient(90deg, rgba(155, 108, 5, 0.685), rgba(207, 162, 15, 0.719), rgba(235, 200, 84, 0.719), rgba(245, 230, 180, 0.726), rgba(235, 200, 84, 0.726), rgba(207, 162, 15, 0.726), rgba(155, 108, 5, 0.74));">
		<!-- ACA VA EL NAVBAR  -->
		<%@include file="navbar.jsp" %>
		<main class="mt-5 pt-5">
			<div class="container">
				<h1 class="fs-1 text-center">LISTADO</h1>
				<section class="overflow-auto">
					<table class="table mt-5 ps-4">
					  <thead>
					    <tr class="fs-5">
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
					    <tr class="fs-5">
					      <th scope="row" class="text-secondary"><em><%=unProducto.getIdProducto()%></em></th>
					      <td><%=unProducto.getNombre() %></td>
						  <td><%=unProducto.getModelo() %></td>
					      <td><em><b>$</b></em> <%=unProducto.getPrecio() %></td>
					      <td><i><%=unProducto.getCodigo() %></i></td>
					      <td>
					      	<a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unProducto.getIdProducto()%>" role="button">Eliminar</a> | 
					      	<a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unProducto.getIdProducto()%>" role="button">Editar</a>
					      </td>
					    </tr>
					   <%
					   	}
					   %>
					  </tbody>
					</table>
				</section>
				<div class="container text-center fixed-bottom mb-4">
					<div class="row">
						<div class="col-md p-1">
							<a class="btn btn-outline-dark bg-gradient bg-opacity-75 btn-block fs-3 w-50 shadow-lg" href="<%=request.getContextPath()%>/alta.jsp"><i class="bi bi-arrow-return-left"> Regresar a Alta</i></a>
						</div>
						<!--<div class="col-md-6 p-1">
							<a class="btn btn-outline-dark bg-gradient bg-opacity-75 btn-block fs-3 w-75 shadow-lg" href="<%=request.getContextPath()%>"><i class="bi bi-house"> Inicio</i></a>
						</div>-->
					</div>
				</div>
			</div>
		</main>
	</body>	
</html>