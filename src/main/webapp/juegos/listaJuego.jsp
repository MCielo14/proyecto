<%--
  Created by IntelliJ IDEA.
  User: maric
  Date: 29/05/2023
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ergoproxy.entregable5.models.beans.Juegos" %>
<%@ page import="com.ergoproxy.entregable5.models.daos.JuegosDao" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<% ArrayList<Juegos> listaJuegos = (ArrayList<Juegos>) request.getAttribute("listaJuegos"); %>

<!-------------------------------------------------------------------------------------->

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <title>Juegos | Manager ERGO PROXY</title>

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
                <li><a href="Template/manager.admin.html" >Home</a></li>
                <li><a href="manager.users.html">Usuarios</a></li>
                <li><a href="manager.games.html" class="active">Juegos</a></li>
                <li><a href="manager.admin.html">Administradores</a></li>
                <li><a href="login.html">Inicia sesión</a></li>
                <li><a href="#">Manager<img src="${pageContext.request.contextPath} / assets/images/profile-header.jpg" style="border-radius: 50%;
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
            <h3>Lista de Administradores</h3>
            <span class="breadcrumb"><a href="#">Home</a> &gt; Lista de Administradores</span>
          </div>
        </div>
      </div>
    </div>

    <div class="section most-played">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="section-heading">
              <!-- <h6>TOP GAMES</h6> -->
              <h2>Listado de Administradores</h2>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="main-button">
              <a href="listajuego.html">Ver todos</a>
            </div>
          </div>
          <% for (Juegos j :listaJuegos) { %>
            <div class="row-cols-1">
              <div class="item vertical-center">
                <ul>
                  <li><img src="${pageContext.request.contextPath}/assets/images/game-01.jpg" alt="" class="templatemo-item"></li>
                  <li>
                    <h6><%=j.getIdJuegos() %></h6><span><%=j.getIdJuegos() %></span>
                  </li>
                  <li>
                    <h6><%=j.getNombre() %></h6><span><%=j.getNombre() %></span>
                  </li>
                  <li>
                    <h6><%=j.getRating() %></h6><span><%=j.getRating() %></span>
                  </li>
                  <li>
                    <h6><%=j.getPrecio_unidad() %></h6><span><%=j.getPrecio_unidad()%></span>
                  </li>
                  <li>
                    <div class="main-border-button border-no-active"><a href="#">Banear</a></div>
                  </li>
                </ul>
              </div>
            </div>
          <% } %>

        </div>
      </div>
    </div>

    <div class="section most-played">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="section-heading">
              <h6>TOP GAMES</h6>
              <h2>Más jugados</h2>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="main-button">
              <a href="listajuego.html">Ver todos</a>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-sm-6">
            <div class="item">
              <div class="thumb">
                <a href="#"><img src="/${pageContext.request.contextPath}/assets/images/top-game-01.jpg" alt=""></a>
              </div>
              <div class="down-content">
                <span class="category">Adventure</span>
                <h4>Assasin Creed</h4>
                <a href="#">Explore</a>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-sm-6">
            <div class="item">
              <div class="thumb">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/top-game-02.jpg" alt=""></a>
              </div>
              <div class="down-content">
                <span class="category">Adventure</span>
                <h4>Assasin Creed</h4>
                <a href="#">Explore</a>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-sm-6">
            <div class="item">
              <div class="thumb">
                <a href="#"><img src="/${pageContext.request.contextPath}/assets/images/top-game-03.jpg" alt=""></a>
              </div>
              <div class="down-content">
                <span class="category">Adventure</span>
                <h4>Assasin Creed</h4>
                <a href="#">Explore</a>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-sm-6">
            <div class="item">
              <div class="thumb">
                <a href="#"><img src="/${pageContext.request.contextPath}/assets/images/top-game-04.jpg" alt=""></a>
              </div>
              <div class="down-content">
                <span class="category">Adventure</span>
                <h4>Assasin Creed</h4>
                <a href="#">Explore</a>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-sm-6">
            <div class="item">
              <div class="thumb">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/top-game-05.jpg" alt=""></a>
              </div>
              <div class="down-content">
                <span class="category">Adventure</span>
                <h4>Assasin Creed</h4>
                <a href="#">Explore</a>
              </div>
            </div>
          </div>
          <div class="col-lg-2 col-md-6 col-sm-6">
            <div class="item">
              <div class="thumb">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/top-game-06.jpg" alt=""></a>
              </div>
              <div class="down-content">
                <span class="category">Adventure</span>
                <h4>Assasin Creed</h4>
                <a href="#">Explore</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="section categories">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <div class="section-heading">
              <h6>Categorías</h6>
              <h2>Top Categorías</h2>
            </div>
          </div>
          <div class="col-lg col-sm-6 col-xs-12">
            <div class="item">
              <h4>Action</h4>
              <div class="thumb">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/categories-01.jpg" alt=""></a>
              </div>
            </div>
          </div>
          <div class="col-lg col-sm-6 col-xs-12">
            <div class="item">
              <h4>Action</h4>
              <div class="thumb">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/categories-05.jpg" alt=""></a>
              </div>
            </div>
          </div>
          <div class="col-lg col-sm-6 col-xs-12">
            <div class="item">
              <h4>Action</h4>
              <div class="thumb">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/categories-03.jpg" alt=""></a>
              </div>
            </div>
          </div>
          <div class="col-lg col-sm-6 col-xs-12">
            <div class="item">
              <h4>Action</h4>
              <div class="thumb">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/categories-04.jpg" alt=""></a>
              </div>
            </div>
          </div>
          <div class="col-lg col-sm-6 col-xs-12">
            <div class="item">
              <h4>Action</h4>
              <div class="thumb">
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/categories-05.jpg" alt=""></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="section cta">
      <div class="container">
        <div class="row">
          <div class="col-lg-5">
            <div class="shop">
              <div class="row">
                <div class="col-lg-12">
                  <div class="section-heading">
                    <h6>Nosotros</h6>
                    <h2>Compra y obtén los mejores <em>precios</em> para ti!</h2>
                  </div>
                  <p>No dejes pasar la oportidad. Tenemos las mejores ofertas todos los meses en los mejores juegos y
                    sagas.</p>
                  <div class="main-button">
                    <a href="listajuego.html">Compra ahora</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-5 offset-lg-2 align-self-end">
          </div>
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
    <script src="${pageContext.request.contextPath} assets/javascript/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath} assets/javascript/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath} assets/javascript/isotope.min.js"></script>
    <script src="${pageContext.request.contextPath} assets/javascript/owl-carousel.js"></script>
    <script src="${pageContext.request.contextPath} assets/javascript/counter.js"></script>
    <script src="${pageContext.request.contextPath} assets/javascript/custom.js"></script>

  </body>

</html>
