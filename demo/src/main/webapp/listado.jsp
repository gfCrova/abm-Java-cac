<%@page import="java.util.List"%>
<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
	<head>
		<%@include file="head.jsp"%>	
	</head>
	
	<body style="background: linear-gradient(90deg, rgb(190, 44, 7), rgb(216, 145, 12), rgba(194, 146, 42, 0.925), rgb(240, 211, 130), rgba(194, 146, 42, 0.925), rgb(216, 145, 12), rgb(190, 44, 7));">
		<!-- ACA VA EL NAVBAR  -->
		<%@include file="navbar.jsp" %>
		<main class="mt-5 pt-5">
			<div class="container">
				<h1 class="fs-1 text-center">LISTADO</h1>
				<div class="row">
					<div class="col-md">
						<table class="table table-hover mt-5" style="font-size: 1.2vw;">
						  <thead class="bg-dark text-light">
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
							  <th scope="row" class="text-secondary table-light"><em> <%=unProducto.getIdProducto()%></em></th>
							  <td class="table-info"><%=unProducto.getNombre() %></td>
							  <td class="table-light"><%=unProducto.getModelo() %></td>
							  <td class="table-info"><em><b>$</b></em> <%=unProducto.getPrecio() %></td>
							  <td class="table-light"><i><%=unProducto.getCodigo() %></i></td>
							  <td class="table-info">
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
		</main>
	</body>	
</html>