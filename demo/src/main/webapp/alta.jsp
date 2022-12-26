<html>
	<head>
		<%@include file="head.jsp" %>
	</head>
	
	<body style="background: linear-gradient(90deg, rgb(0, 0, 0), rgba(27, 27, 27, 0.87), rgba(109, 47, 47, 0.788), rgba(131, 32, 32, 0.925), rgba(204, 63, 63, 0.836));">
		<main id="main-alta" class="mt-5 py-3" style="font-family: 'Montserrat', sans-serif; background-image: url(./assets/img/pc2.png); background-size: contain; background-repeat: no-repeat; background-position-y: 5rem; background-position-x: left;">
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<div class="bg-danger bg-gradient py-3 shadow-lg">
				<h1 class="text-center text-light shadow-lg py-2" style="font-size: 2.5vw;">Dar de ALTA</h1>
			</div>
			<div class="container-fluid">
					<div class="row">
						<div id="app" class="d-flex pt-1 mt-4 pt-4 justify-content-end align-items-end">
							<div class="col-md-5 card mx-5 shadow-lg">
								<div class="card-header bg-danger bg-gradient">
									<h4 class="text-align text-light">Agrega un Componente</h4>
								</div>
								<div class="card-body p-2">
									<form class="form-group" method="post"
										action="<%=request.getContextPath()%>/CreateController">
										<div class="mb-2 form-group">
										<label for="exampleFormControlInput1" class="col-form-label-lg ml-1">Nombre</label>
										<input name="nombre"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="Placa.., Monitor.., etc.." maxlength="50">
										</div>
										<div class="mb-2 form-group">
										<label for="exampleFormControlInput1" class="col-form-label-lg ml-1">Modelo</label>
										<input name="modelo"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="Amd Radeon.., Samsung LED 27.. " maxlength="50">
										</div>
										<div class="mb-2 form-group">
										<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">Precio</label>
										<input name="precio" type="number" class="form-control" id="exampleFormControlTextarea1" placeholder="0.00">
										</div>
										<div class="mb-2 form-group">
										<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">Im&aacute;gen (opcional)</label>
										<input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1">
										</div>
										<div class="mb-2 form-group">
										<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">C&oacute;digo</label>
										<input name="codigo" type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7">
										</div>
										<div class="text-center">
											<button class="btn btn-danger btn-block w-100 fw-bold text-light mt-2 p-3 shadow-lg" type="submit"><i class="bi bi-plus-circle-fill"> ADD</i>
											</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
			</div>
		</main>

		<script src="./assets/js/main.js"></script>
	</body>	
</html>