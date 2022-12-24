<html>

<head>
	<%@include file="head.jsp" %>
</head>

<body class="b-index">
	<!-- ACA VA EL NAVBAR  -->
	<%@include file="navbar.jsp" %>
		<main class="mt-5">
			<div class="container text-center m-auto text-light mt-5">
				<section class="row my-5">
					<h1 class="mt-5 pt-5 fixed-top fs-1 font-family-Roboto">ABM de productos </h1>
				</section>
				<section class="row mt-5">
					<img class="img-fondo position-relative img-fluid fixed-top" src="./assets/img/hardware.png" alt="fondo">
				</section>
				<section class="row mt-5">
					<div class="col-md-6">
						<a class="btn btn-outline-danger btn-block fs-3 fw-bold w-100 shadow-lg" href="<%=request.getContextPath()%>/alta.jsp">ALTA</a>
					</div>
					<div class="col-md-6">
						<a class="btn btn-outline-danger btn-block fs-3 fw-bold w-100 shadow-lg" href="<%=request.getContextPath()%>/api/ListadoController">LISTADO</a>
					</div>
				</section>
			</div>
		</main>
	</body>

</html>