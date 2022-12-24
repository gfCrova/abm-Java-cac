<nav class="navbar navbar-expand-md navbar-dark bg-dark bg-gradient fixed-top">
  <div class="container-fluid">
      <img class="icon-cac" src="assets/img/codoacodo.png" alt="icon">
      <a class="navbar-brand" href="<%=request.getContextPath()%>">Codo a Codo</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <a class="nav-link disabled">&copy; GFC</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">2022</a>
        </li>
      </ul>
      <form class="d-flex pt-1"	
      	action="<%=request.getContextPath()%>/api/BuscarController" 
      	method="get">
        <input name="clave" class="form-control w-75 me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-danger w-25" type="submit">Buscar</button>
      </form>
    </div>
  </div>
</nav>
