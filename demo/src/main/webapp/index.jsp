<html>

<head>
	<%@include file="head.jsp" %>
</head>

<body class="b-index">
	<!-- ACA VA EL NAVBAR  -->
	<%@include file="navbar.jsp" %>
		<main class="mt-5">
			<div class="container text-center m-auto text-light mt-5">
				<section class="row mt-5 pt-5">
					<h1 class="fs-1 font-family-Roboto">ABM de productos</h1>
					<p class="fs-3">Hardware</p>
				</section>
				<section class="row">
					<img class="img-fondo position-relative img-fluid" src="./assets/img/hardware.png" alt="fondo">
				</section>
				<div class="container text-center fixed-bottom mb-4">
					<div class="row">
						<div class="col-md-6 p-1">
							<a class="btn btn-danger bg-gradient bg-opacity-75 btn-block fs-3 w-75 shadow-lg" href="<%=request.getContextPath()%>/alta.jsp"><i class="bi bi-plus-circle-fill"> Alta</i></a>
						</div>
						<div class="col-md-6 p-1">
							<a class="btn btn-danger bg-gradient bg-opacity-75 btn-block fs-3 w-75 shadow-lg" href="<%=request.getContextPath()%>/api/ListadoController"><i class="bi bi-list-task"> Listado</i></a>
						</div>
					</div>
				</div>
			</div>
		</main>
	</body>

</html> 