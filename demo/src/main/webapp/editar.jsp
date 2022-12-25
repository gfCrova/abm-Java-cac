<%@page import="ar.com.codoacodo.dto.Producto"%>
<html>
	<head>
		<%@include file="head.jsp" %>	
	</head>
	
	<body>
		<main>
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<div class="container mt-5 pt-5">
				<section>
					<% 
					  	Producto producto = (Producto)request.getAttribute("producto");
				  	%>
					<h1>Editar producto ID=<%=producto.getIdProducto()%></h1>
					<!--  JSP -->
					<form method="POST"
						action="<%=request.getContextPath()%>/api/EditarController">
						<div class="mb-3">
						  <label for="exampleFormControlInput1" class="form-label">Nombre</label>
						  <input name="nombre"
						  	value="<%=producto.getNombre()%>"  
						  	type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre.." maxlength="50">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Modelo</label>
							<input name="modelo"
							value="<%=producto.getModelo()%>"  
							type="text" class="form-control" id="exampleFormControlInput1" placeholder="Modelo.." maxlength="50">
						  </div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Precio</label>
						  <input name="precio"
						  	value="<%=producto.getPrecio()%>" 
						  	type="number" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">Im&aacute;gen</label>
						  <input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1">
						</div>
						<div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label">C&oacute;digo</label>
						  <input name="codigo"
						  	readonly="readonly"
						  	value="<%=producto.getCodigo()%>" 
						  	type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7">
						</div>
						<div class="container">
							<button class="btn btn-primary w-100">
								Guardar
							</button>
						</div>
					</form>
				</section>
			</div>
		</main>
	</body>	
</html>