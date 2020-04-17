<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.AdVA"%>

  
<!DOCTYPE html>
<html lang="es" dir="ltr">

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

  <!-- Custom styles for this template -->
  <link href="css/estilos.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Job Opportunities</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="lang nav-link js-scroll-trigger" key="1" href="#">Inicio</a>
          </li>
          <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="2" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Ingresar
            </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="lang dropdown-item" key="3" href="loginEs.jsp">Estudiante</a>
              <a class="lang dropdown-item" key="4" href="loginEm.jsp">Empresa</a>
              <a class="lang dropdown-item" key="5" href="login.jsp">Administrador</a>
          </li>
          <li class="nav-item dropdown">
              <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="6" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Crear Cuenta
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
              <a class="lang dropdown-item" key="7" href="registrarEs.jsp">Estudiante</a>
              <a class="lang dropdown-item" key="8" href="registrarEm.jsp">Empresa</a>
          </li>
          <li class="nav-item">
            <a class="lang nav-link js-scroll-trigger" key="9" href="#team">Nosotros</a>
          </li>
          <li class="nav-item">
            <a class="lang nav-link js-scroll-trigger" key="10" href="#contact">Contactanos</a>
          </li>
          <li class="nav-item dropdown">
              <a class="lang nav-link dropdown-toggle js-scroll-trigger" key="11" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Traducir
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
                  <a class="lang translate dropdown-item" key="12" id="es">Español</a>
                  <div class="dropdown-divider"></div>
                  <a class="lang translate dropdown-item" key="13" id="en">Ingles</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="lang intro-lead-in" key="300">BIENVENIDOS</div>
        <div class="lang intro-heading text-uppercase" key="">Somos Tu Mejor Opción</div>
      </div>
    </div>
  </header>

  <!-- Services -->
  <section class="page-section" id="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="lang section-heading text-uppercase" key="16">¿Qué estamos buscando?</h2>
        </div>
      </div>
      <div class="row text-center">
        <div class="col-md-4">
        <img class="img-fluid" src="img/mision.jpg" alt="">
          <h4 class="lang service-heading" key="17">Misión</h4>
          <p class="lang text-muted" key="18">Gestionar la busqueda rapida, segura y eficas de empleo para los estudiantes de la universidad distrital.</p>
        </div>
        <div class="col-md-4">
         <img class="img-fluid" src="img/vision.jpg" alt="">
          <h4 class="lang service-heading" key="19">Visión</h4>
          <p class="lang text-muted" key="20">Para el 2020 Job Opportunities planea ser elegido como el promotor principal en la busqueda de empleo para los estudiantes de la universidad distrital.</p>
        </div>
        <div class="col-md-4">
          <img class="img-fluid" src="img/valores.jpg" alt="">
          <h4 class="lang service-heading" key="21">Valores Corporativos</h4>
          <p class="lang text-muted" key="22">-Innovación</p>
          <p class="lang text-muted" key="23">-Respeto</p>
          <p class="lang text-muted"key="24">-Calidad</p>
          <p class="lang text-muted" key="25">-Compromiso</p>
          <p class="lang text-muted" key="26">-Transparencia</p>
        </div>
      </div>
    </div>
  </section>

  <!-- Team -->
  <section class="bg-light page-section" id="team">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="lang section-heading text-uppercase" key="27">Nosotros</h2>
          <h3 class="lang section-subheading text-muted" key="28">Conoce Nuestro Grupo De Trabajo</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/team/nicolas.JPG" alt="">
            <h4>Nicolas</h4>
            <p class="lang text-muted" key="29">Me considero una persona responsable, trabajadora, y me comprometo mucho con el trabajo que se me asigna para responder de forma correcta.</p>
          </div>
        </div>
        <div class="col-sm-6">
          <div class="team-member">
            <img class="mx-auto rounded-circle" src="img/team/nelson.jpg" alt="">
            <h4>Nelson</h4>
            <p class="lang text-muted" key="30">Me considero una persona eficáz, comprometida, responsable, que desea brindar los mejores servicios tanto al equipo de trabajo como a los clientes.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Contact -->
  <section class="page-section" id="contact">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="lang section-heading text-uppercase" key="32">Contactanos</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <form id="contactForm" name="">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                    <label class="lang" style="color: white;" key="33">Nombre</label>
                  <input class="lang form-control" type="text">
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group">
                  <label class="lang" style="color: white;" key="34">Correo electronico</label>
                  <input class="lang form-control" type="email">
                  <p class="help-block text-danger"></p>
                </div>
                <div class="form-group">
                    <label class="lang" style="color: white;" key="35">Numero de telefono</label>
                  <input class="lang form-control" type="tel">
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-group">
                  <label class="lang" style="color: white;" key="36">Tu mensaje</label>
                  <textarea class="lang form-control"></textarea>
                  <p class="help-block text-danger"></p>
                </div>
              </div>
              <div class="clearfix"></div>
              <div class="col-lg-12 text-center">
                <div id="success"></div>
                <button class="lang btn btn-primary btn-xl text-uppercase" key="37"type="submit">Enviar</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
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
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
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

 
  <!-- Menu-->
  <script src="js/menu.js"></script>
<!--Idioma-->
<script src="js/idioma1.js" type="text/javascript"></script>
</body>
</html>
