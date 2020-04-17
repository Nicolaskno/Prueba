<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.AdVA"%>
  
<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html;">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Job Opportunities</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <!-- Custom fonts for this template -->
  <script src="https://kit.fontawesome.com/62ee50badd.js" crossorigin="anonymous"></script>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Estilos per. -->
  <link href="css/estilos.css" rel="stylesheet">
  <!--Estilos alertas-->
  <link href="css/default.min.css" rel="stylesheet" type="text/css"/>
  <link href="css/alertify.min.css" rel="stylesheet" type="text/css"/>
</head>
    <body id="page-top" style="background-image: url('img/img2.jpg');">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top navbar-shrink" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Job Opportunities</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="lang nav-link js-scroll-trigger" key="38" href="index.jsp">Inicio</a>
          </li>
          <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="39" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Ingresar
            </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="lang dropdown-item" key="40" href="loginEs.jsp">Estudiante</a>
              <a class="lang dropdown-item" key="41" href="loginEm.jsp">Empresa</a>
              <a class="lang dropdown-item" key="42" href="login.jsp">Administrador</a>
          </li>
          <li class="nav-item dropdown">
              <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="43" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Crear Cuenta
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
              <a class="lang dropdown-item" key="44" href="registrarEs.jsp">Estudiante</a>
              <a class="lang dropdown-item" key="45" href="registrarEm.jsp">Empresa</a>
          </li>
          <li class="nav-item dropdown">
              <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-globe-americas fa-2x"></i>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                  <a class="lang translate dropdown-item" key="47" id="es">Español</a>
                  <a class="lang translate dropdown-item" key="48" id="en">Ingles</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <br>
  <br>
  <br>
  <br>
  <style>
      .opacity{
          background-color: rgba(0,0,0,.6);
          opacity: 0.9;
        
      }
  </style>
        <div class="container mt-4 col-lg-4" id="login">
            <div class="card col-sm-12 opacity">
                <div class="card-body">
                    <form  class="form-sign" action="ValidarAd1" method="post" onsubmit="return validar();">
                        <div class="form-group text-center">
                            <h3 class="lang" key="51" style="color: white;">Bienvenido Administrador</h3>                           
                        </div>
                        <div class="form-group">
                            <label class="lang" key="52" style="color: white;">Correo Electronico</label>
                            <input id="usuario" type="text" name="txtuser" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="lang" key="53" style="color: white;">Contraseña</label>
                            <input id="clave" type="password" name="txtpass" value="" class="form-control">
                        </div>
                        <button id="ingresar" key="54" type="submit" name="accion" class="lang btn btn-primary btn-block">Ingresar</button>
                    </form>
                    <%
                      if(request.getParameter("error")!=null){
                          String error = request.getParameter("error");
                          out.println("<h6><font color='red'>"+error+"</font></h6>");
                      }
                    %>
                </div>
            </div>
        </div>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
       <!-- Footer -->
  <footer class="footer opacity">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
            <span class="copyright" style="color: white;">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
                <a href="#" style="color: white;">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
                <a href="#" style="color: white;">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

  

  <!-- Bootstrap core JavaScript -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

 

  <!-- Custom scripts for this template -->

<!--Idioma-->
  <script src="js/idioma1.js" type="text/javascript"></script>
  <!--alertas-->
  <script src="js/alertify.min.js" type="text/javascript"></script>
  <!--validar-->
  <script src="js/validar.js" type="text/javascript"></script>
  
</body>
</html>
