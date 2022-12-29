<html>
	<head>
		<%@include file="head.jsp" %>
	</head>
	
	<body id="body-alta">
		<main id="main-alta" class="mt-5 py-3">
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<div class="bg-danger bg-gradient py-3 shadow-lg">
				<h1 id="h1-alta" class="text-center text-light shadow-lg py-2">Dar de ALTA</h1>
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
										<label for="exampleFormControlInput1" class="col-form-label-lg ml-1">Componente</label>
										<input name="componente"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="ej: Placa.." maxlength="50">
										</div>
										<div class="mb-2 form-group">
										<label for="exampleFormControlInput1" class="col-form-label-lg ml-1">Modelo</label>
										<input name="modelo"  type="text" class="form-control" id="exampleFormControlInput1" placeholder="ej: Amd Radeon.." maxlength="50">
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
										<input name="codigo" type="number" class="form-control" id="exampleFormControlTextarea1">
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

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
		
	</body>	
</html>