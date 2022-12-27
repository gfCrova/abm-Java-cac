<%@page import="ar.com.codoacodo.dto.Producto" %>
	<html>

	<head>
		<%@include file="head.jsp" %>
	</head>

	<body>
		<main style="background: linear-gradient(90deg, rgba(148, 43, 1, 0.815), rgba(180, 90, 5, 0.788), rgba(211, 147, 51, 0.87), rgba(243, 215, 155, 0.925), rgba(211, 147, 51, 0.87), rgba(180, 90, 5, 0.788), rgba(148, 43, 1, 0.815));">

			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>

				<div class="container mt-5 pt-5">
					<% Producto producto=(Producto)request.getAttribute("producto"); %>
						<div class="container-fluid py-3 bg-secondary bg-gradient shadow-lg">
							<h1 class="text-center text-dark shadow-lg py-2" style="font-size: 2.5vw;">Editar Componente "ID = <%=producto.getIdProducto()%>"</h1>
						</div>
						<div class="row">
							<div class="d-flex pt-1 mt-5 pt-5 justify-content-center align-items-center">
								<div class="col-md-6 alta card p-1 shadow-lg">
									<div class="card-body p-2">
										<form class="form-group" method="POST" action="<%=request.getContextPath()%>/api/EditarController">
											<div class="mb-2 form-group">
											<label for="exampleFormControlInput1" class="col-form-label-lg ml-1">Nombre</label>
											<input name="nombre" value="<%=producto.getNombre()%>" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Monitor.., Placa.., etc.." maxlength="50">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlInput1" class="col-form-label-lg ml-1">Modelo</label>
											<input name="modelo" value="<%=producto.getModelo()%>" type="text" class="form-control" id="exampleFormControlInput1" placeholder="AMD radeon.." maxlength="50">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">Precio</label>
											<input name="precio" value="<%=producto.getPrecio()%>" type="number" class="form-control" id="exampleFormControlTextarea1">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">Im&aacute;gen</label>
											<input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">C&oacute;digo</label>
											<input name="codigo" readonly="readonly" value="<%=producto.getCodigo()%>" type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7">
											</div>
											<div class="text-center">
												<button class="btn btn-danger btn-block w-100 fw-bold text-light mt-2 p-3 shadow-lg" type="submit"><i class="bi bi-plus-circle-fill"> Guardar</i>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
				</div>
		</main>
	</body>

	</html>