<html>
	<head>
		<%@include file="head.jsp" %>
	</head>
	
	<body style="background: linear-gradient(90deg, rgba(148, 43, 1, 0.815), rgba(180, 90, 5, 0.788), rgba(211, 147, 51, 0.87), rgba(243, 215, 155, 0.925), rgba(211, 147, 51, 0.87), rgba(180, 90, 5, 0.788), rgba(148, 43, 1, 0.815));">
		<main id="main-alta" class="mt-5 pt-5 pb-5" style="font-family: 'Montserrat', sans-serif; background-image: url(./assets/img/laptop.png); background-size: contain; background-repeat: no-repeat; transition: all 1s;">
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<div class="container-fluid">
				<h1 class="text-center fw-bold" style="font-size: 3vw;">Dar de ALTA</h1>
					<div class="row">
						<div id="app" class="d-flex pt-1 mt-4 pt-4 justify-content-end align-items-end">
							<div class="col-md-5 card mx-3 border-4 border-light rounded-3 shadow-lg">
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
										<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1">Im&aacute;gen</label>
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