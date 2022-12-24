<html>
	<head>
		<%@include file="head.jsp" %>
	</head>
	
	<body class="bg-gray bg-gradient">
		<main>
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<div class="container mt-5 pt-5">
				<section>
					<h1 class="fs-1 text-center">Dar de Alta</h1>
						<div id="app" class="d-flex pt-5 mt-2 justify-content-center align-items-center">
							<div class="col-md-6 me-5">
								<div class="alta card p-1 shadow-lg">
									<div class="card-header">
										<h4 class="text-align">Agrega un producto</h4>
									</div>
									<div class="card-body p-2">
										<form class="form-group" method="post"
											action="<%=request.getContextPath()%>/CreateController">
											<div class="mb-2 form-group">
											<label for="exampleFormControlInput1" class="col-form-label-lg ml-1">Nombre</label>
											<input name="nombre"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">Precio</label>
											<input name="precio" type="number" class="form-control" id="exampleFormControlTextarea1">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">Im&aacute;gen</label>
											<input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">C&oacute;digo</label>
											<input name="codigo" type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7">
											</div>
											<div class="text-center">
												<button class="btn btn-info btn-block w-50 text-light fs-2 fw-bold mt-2 p-3 shadow-lg" type="submit"><i class="bi bi-plus-circle-fill"></i>
												</button>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<img class="img-fluid" src="./assets/img/agregar-paquete.png" alt="img-alta">
							</div>
						</div>
				</section>
				<section class="row text-center fixed-bottom mb-4">
					<div class="col-md-6 p-1">
						<a class="btn btn-danger bg-gradient btn-block fs-3 w-75 shadow-lg" href="<%=request.getContextPath()%>"><i class="bi bi-arrow-return-left"> Volver al Inicio</i></a>
					</div>
					<div class="col-md-6 p-1">
						<a class="btn btn-danger bg-gradient btn-block fs-3 w-75 shadow-lg" href="<%=request.getContextPath()%>/api/ListadoController"><i class="bi bi-list-task"> Ir al Listado</i></a>
					</div>
				</section>
			</div>
		</main>

		<script src="./assets/js/main.js"></script>
	</body>	
</html>