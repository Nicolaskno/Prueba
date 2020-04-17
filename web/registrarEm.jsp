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
        <%
        String action=request.getParameter("accion");        
        %>
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
            <a class="lang nav-link js-scroll-trigger" key="108" href="index.jsp">Inicio</a>
          </li>
          <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="109" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Ingresar
            </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="lang dropdown-item" key="110" href="loginEs.jsp">Estudiante</a>
              <a class="lang dropdown-item" key="111" href="loginEm.jsp">Empresa</a>
              <a class="lang dropdown-item" key="112" href="login.jsp">Administrador</a>
          </li>
          <li class="nav-item dropdown">
              <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="113" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Crear Cuenta
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
              <a class="lang dropdown-item" key="114" href="registrarEs.jsp">Estudiante</a>
              <a class="lang dropdown-item" key="115" href="registrarEm.jsp">Empresa</a>
          </li>
          <li class="nav-item dropdown">
              <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="fas fa-globe-americas fa-2x"></i>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                  <a class="lang translate dropdown-item" key="117" id="es">Español</a>
                  <a class="lang translate dropdown-item" key="118" id="en">Ingles</a>
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
  <div class="container  mt-4 col-lg-4">
            <div class="card col-sm-12 opacity">
                <div class="card-body">
                    <form class="form-sign" action="ControladorEmpresa" method="get" onsubmit="return validar3();" >
                        <div class="form-group text-center">
                            <h3 class="lang" key="121" style="color: white;">Registrar Empresa</h3>
                        </div>
                        <br>
                        <div class="form-group">
                            <label class="lang" key="122" style="color: white;">NIT</label>
                            <input id="nit" type="text" name="txtNit" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="lang" key="123" style="color: white;">Razon Social</label>
                            <input id="raz" type="text" name="txtRaz" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="lang" key="124" style="color: white;">Representante Legal</label>
                            <input id="rep" type="text" name="txtRep" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="lang" key="125" style="color: white;">Correo Electronico</label>
                            <input id="usuario3" type="text" name="txtUsuario" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="lang" key="126" style="color: white;">Contraseña</label>
                            <input id="clave3" type="password" name="txtClave" value="" class="form-control">
                        </div>
                        <button id="agregar" key="127" type="submit" name="accion" value="Agregar" class="lang btn btn-primary btn-block">Registrarse</button>
                       <%
                              out.println("<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>");
                              out.println("<script src='js/alertify.min.js'></script>");
                              out.println("<script>");
                              out.println("$(document).ready(function(){");
                              out.println("$('#agregar').click(function(){");
                              out.println("alertify.alert('Correcto', 'Empresa Registrada').set('label', 'ok',);");
                              out.println("});");
                              out.println("});");
                              out.println("</script>");
                        %>
                    </form>
                </div>
            </div>
        </div>
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
