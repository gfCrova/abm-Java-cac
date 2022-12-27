<%@page import="java.util.List"%>
<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
	<head>
		<%@include file="head.jsp"%>	
	</head>
	
	<body style="background: linear-gradient(180deg, rgb(255, 255, 255), rgba(226, 214, 182, 0.822), rgb(255, 229, 158), rgba(233, 198, 123, 0.925), rgb(160, 134, 85));">
		<!-- ACA VA EL NAVBAR  -->
		<%@include file="navbar.jsp" %>
		<main class="mt-5 py-3" style="font-family: 'Montserrat', sans-serif;">
			<div class="container-fluid py-3 bg-danger bg-gradient shadow-lg">
				<h1 class="text-center text-light shadow-lg py-2" style="font-size: 2.5vw;">Lista de Componentes</h1>
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
	</body>	
</html>