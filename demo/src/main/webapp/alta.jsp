<html>
	<head>
		<%@include file="head.jsp" %>
	</head>
	
	<body class="bg-gray bg-gradient">
		<main>
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<div class="container">
				<section>
						<div id="app" class="d-flex pt-5 mt-5 justify-content-center align-items-center">
							<div class="col-md-8 me-5">
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
											<button class="btn btn-info btn-block w-100 text-light fs-3 fw-bold mt-2 shadow-lg" type="submit">
												Dar de alta
											</button>
										</form>
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<img src="./assets/img/agregar-paquete.png" alt="img-alta">
							</div>
						</div>
				</section>
				<p class="text-center fixed-bottom">&copy; GFC - 2022</p>
			</div>
		</main>

		<script src="./assets/js/main.js"></script>
	</body>	
</html>