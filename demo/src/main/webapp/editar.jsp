<%@page import="ar.com.codoacodo.dto.Producto" %>
	<html>

	<head>
		<%@include file="head.jsp" %>
	</head>

	<body style="background: linear-gradient(180deg, rgb(0, 104, 9), rgba(43, 168, 70, 0.87), rgba(100, 184, 118, 0.842), rgb(200, 238, 203), rgb(255,255,255));">
		<main class="mt-5 pt-2" style="background-image: url(./assets/img/codoacodo.png); background-size: contain; background-repeat: no-repeat;">
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<% Producto producto=(Producto)request.getAttribute("producto"); %>
				<div class="container-fluid py-2 bg-light bg-gradient shadow-lg">
					<h1 class="text-center text-dark shadow-lg py-2" style="font-size: 2.5vw;">Editar Componente <span class="text-success">"ID = <%=producto.getIdProducto()%>"</span></h1>
				</div>
				<div class="container">
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
												<button class="btn btn-success btn-block w-100 fs-4 fw-bold text-light mt-2 p-3 shadow-lg" type="submit"><i class="bi bi-plus-circle-fill"> Guardar</i>
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