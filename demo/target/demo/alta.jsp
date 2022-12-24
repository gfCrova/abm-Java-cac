<html>
	<head>
		<%@include file="head.jsp" %>
	</head>
	
	<body style="background: linear-gradient(180deg, rgba(148, 43, 1, 0.815), rgba(180, 90, 5, 0.788), rgba(211, 147, 51, 0.87), rgba(243, 215, 155, 0.774), white);">
		<main>
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<div class="container mt-5 pt-5">
				<h1 class="fs-1 text-light text-center">Dar de Alta</h1>
					<div class="row">
						<div id="app" class="d-flex pt-5 mt-2 justify-content-center align-items-center">
							<div class="col-md-6 alta card p-1 shadow-lg">
								<div class="card-header bg-danger bg-gradient">
									<h4 class="text-align text-light">Agrega un producto</h4>
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
											<button class="btn btn-danger btn-block w-100 fw-bold text-light mt-2 p-3 shadow-lg" type="submit"><i class="bi bi-plus-circle-fill"> ADD</i>
											</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="container text-center fixed-bottom mb-4">
						<div class="row">
							<div class="col-md-6 p-1">
								<a class="btn btn-danger bg-gradient btn-block fs-3 w-75 shadow-lg" href="<%=request.getContextPath()%>"><i class="bi bi-arrow-return-left"> Volver al Inicio</i></a>
							</div>
							<div class="col-md-6 p-1">
								<a class="btn btn-danger bg-gradient btn-block fs-3 w-75 shadow-lg" href="<%=request.getContextPath()%>/api/ListadoController"><i class="bi bi-list-task"> Ir al Listado</i></a>
							</div>
						</div>
					</div>
			</div>
		</main>

		<script src="./assets/js/main.js"></script>
	</body>	
</html>