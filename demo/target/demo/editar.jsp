<%@page import="ar.com.codoacodo.dto.Producto" %>

<html>

	<head>
		<%@include file="head.jsp" %>
	</head>

	<body id="body-edit" style="background: linear-gradient(180deg, rgb(255, 255, 255), rgba(226, 214, 182, 0.822), rgb(255, 229, 158), rgba(233, 198, 123, 0.925), rgb(160, 134, 85));">
		<main id="main-edit" class="mt-5 py-3">
			<!-- ACA VA EL NAVBAR  -->
			<%@include file="navbar.jsp" %>
			<% Producto producto=(Producto)request.getAttribute("producto"); %>
				<div class="container-fluid py-3 bg-light bg-gradient shadow-lg">
					<h1 id="h1-edit" class="text-center text-dark shadow-lg py-2">Editar Componente</h1>
				</div>
				<div class="container">
						<div class="row">
							<div class="d-flex pt-1 mt-4 pt-4 justify-content-center align-items-center">
								<div class="col-md-6 alta card p-1 shadow-lg">
									<div class="card-header bg-gradient">
										<h1 class="text-dark text-center">ID = <span class="text-success"><%=producto.getIdProducto()%></span></h1>
									</div>
									<div class="card-body p-2">
										<form class="form-group" method="POST" action="<%=request.getContextPath()%>/api/EditarController">
											<div class="mb-2 form-group">
											<label for="exampleFormControlInput1" class="col-form-label-lg ml-1 fw-bold">Nombre</label>
											<input name="nombre" value="<%=producto.getNombre()%>" type="text" class="form-control" id="exampleFormControlInput1" placeholder="Monitor.., Placa.., etc.." maxlength="50">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlInput1" class="col-form-label-lg ml-1 fw-bold">Modelo</label>
											<input name="modelo" value="<%=producto.getModelo()%>" type="text" class="form-control" id="exampleFormControlInput1" placeholder="AMD radeon.." maxlength="50">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1 fw-bold">Precio</label>
											<input name="precio" value="<%=producto.getPrecio()%>" type="number" class="form-control" id="exampleFormControlTextarea1">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1 fw-bold">Im&aacute;gen</label>
											<input name="imagen" type="file" class="form-control" id="exampleFormControlTextarea1">
											</div>
											<div class="mb-2 form-group">
											<label for="exampleFormControlTextarea1" class="col-form-label-lg ml-1 fw-bold">C&oacute;digo</label>
											<input name="codigo" value="<%=producto.getCodigo()%>" type="number" class="form-control" id="exampleFormControlTextarea1">
											</div>
											<div class="text-center">
												<button class="btn btn-success btn-block w-100 fs-4 fw-bold text-light mt-2 p-3 shadow-lg" type="submit"><i class="bi bi-box-arrow-down"> Guardar</i>
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