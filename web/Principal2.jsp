<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.AdVA"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href="css/morris.css" rel="stylesheet" type="text/css"/>
         <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href="css/menuAD.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <div class="d-flex" id="wrapper">
	
	<!-- Sidebar -->
	<div class="bg-dark border-right" id="sidebar-wrapper">
            <div class="sidebar-heading" style="font-family: 'Kaushan Script'; color: white;" >Job Opportunities</div>
	<div class="list-group list-group-flush">
	<a href="Principal2.jsp" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="128">Inicio</a>
	<a href="ControladorAdministrador1?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="129">Administrador</a>
	<a href="ControladorEstudiante?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="130">Estudiante</a>
	<a href="ControladorEmpresa?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="131">Empresa</a>
	</div>
	</div>
	<!-- /#sidebar-wrapper -->
	
	<!-- Page Content -->
	<div id="page-content-wrapper">
	
	<nav class="navbar navbar-expand-lg navbar-light bg-primary border-bottom">
	<button class="lang btn btn-primary" id="menu-toggle" key="132">Menu</button>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="133" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Traducir
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="lang translate dropdown-item" key="134" id="es">Español</a>
	<div class="dropdown-divider"></div>
        <a class="lang translate dropdown-item" key="135" id="en">Ingles</a>
	</div>
	</li>
	<li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="136" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Perfil
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">
                <img src="img/user.png" alt="60" width="60"/>
            </a>
	<a class="lang dropdown-item" key="137" href="#">Usuario</a>
	<a class="dropdown-item" href="#">${usu}</a>
	<div class="dropdown-divider"></div>
	<a class="lang dropdown-item" key="138" href="CerrarSeAd">Salir</a>
	</div>
	</li>
	</ul>
	</div>
	</nav>
	
	<div class="container-fluid">
	<br>
        <br>
         <div class="container">   
             <h1 class="lang" key="139">Graficos</h1>
            <hr>
            <div class="row">
                <div class="col-md-6">
                    <h2 class="lang" key="140">Grafica de bar</h2>
                    <hr>
                    <div id="graph"></div>
                    <pre id="code" class="prettyprint linenums">
                    </pre>
                </div>
                <div class="col-md-6">
                    <h2 class="lang" key="141">Grafica de lineas</h2>
                    <hr>
                    <div id="myfirstchart" style="height: 250px;"></div>
                </div>
            </div>
	</div>
	</div>
	<!-- /#page-content-wrapper -->
	</div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="js/raphael-min.js" type="text/javascript"></script>
        <script src="js/morris.min.js" type="text/javascript"></script>
        <script src="js/estadisticas.js" type="text/javascript"></script>
        <script src="js/menuAD.js" type="text/javascript"></script>
        <script src="js/idioma1.js" type="text/javascript"></script>
    </body>
</html>
