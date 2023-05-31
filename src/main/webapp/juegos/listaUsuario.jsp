<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ergoproxy.entregable5.models.beans.Usuario" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% ArrayList<Usuario> listaUsuarios = (ArrayList<Usuario>) request.getAttribute("listaUsuarios"); %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

  <title>Usuarios | Manager ERGO PROXY</title>

  <!-- Bootstrap core CSS -->
  <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.admin.user.css" rel="stylesheet">


  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fontawesome.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/manager.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/owl.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/animate.css">
  <!--

TemplateMo 589 lugx gaming

https://templatemo.com/tm-589-lugx-gaming

-->
</head>

<body>

<!-- ***** Preloader Start ***** -->

<!-- ***** Preloader End ***** -->

<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <nav class="main-nav">
          <!-- ***** Logo Start ***** -->
          <a href="index.html" class="logo">
            <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="" style="width: 65px;">
          </a>
          <!-- ***** Logo End ***** -->
          <!-- ***** Menu Start ***** -->
          <ul class="nav">
            <li><a href="manager.home.html" >Home</a></li>
            <li><a href="manager.users.html"class="active">Usuarios</a></li>
            <li><a href="manager.games.html">Juegos</a></li>
            <li><a href="manager.admin.html">Administradores</a></li>
            <li><a href="login.html">Inicia sesión</a></li>
            <li><a href="#">Manager<img src="${pageContext.request.contextPath}/assets/images/profile-header.jpg" style="border-radius: 50%;
                margin-left: 5px; max-width: 20%;" alt=""></a></li>
          </ul>
          <a class='menu-trigger'>
            <span>Menu</span>
          </a>
          <!-- ***** Menu End ***** -->
        </nav>
      </div>
    </div>
  </div>
</header>
<!-- ***** Header Area End ***** -->

<div class="page-heading header-text">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h3>Lista de usuarios</h3>
        <span class="breadcrumb"><a href="#">Home</a> &gt; Lista de usuarios</span>
      </div>
    </div>
  </div>
</div>

<div class="section most-played">
  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="section-heading">
          <h2>Lista de usuarios</h2>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="main-button">
          <a href="listajuego.html">Ver todos</a>
        </div>
        <div class="search-input">
          <form id="search" action="#">
            <input type="text" placeholder="Type Something" id="searchText" name="searchKeyword" onkeypress="handle">
            <button role="button">Search Now</button>
          </form>
        </div>
      </div>
      <% for (Usuario j :listaUsuarios) { %>
      <div class="row-cols-1" >
        <div class="item vertical-center" >
          <ul >
            <li ><h5 > <%=j.getNickname() %> </h5 ><img src = "assets/images/game-01.jpg" alt = "" class="templatemo-item" ></li >

            <li >
              <h6 > Cantidad de juegos comprados </h6 ><span > Sandbox </span >
            </li >
            <li >
              <h6 > Cantidad de juegos vendidos </h6 ><span > # </span >
            </li >
            <li >
              <h6 > Dinero ganado en ventas </h6 ><span > # </span >
            </li >
            <li >
              <h6 > Dinero gastado en compras </h6 ><span > # </span >
            </li >
            <li >
              <div class="main-border-button border-no-active" ><a href = "#" > Banear </a ></div >
            </li >
          </ul >
        </div >
      </div >
      <% } %>

    </div>
  </div>
</div>

<footer>
  <div class="container">
    <div class="col-lg-12">
      <p>Copyright © 2023 ERGO PROXY Gaming Company. Todos los derechos reservados. Diseñado para el cursos de
        Ingeniería web PUCP.</p>
    </div>
  </div>
</footer>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/isotope.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/counter.js"></script>
<script src="assets/js/custom.js"></script>

</body>

</html>