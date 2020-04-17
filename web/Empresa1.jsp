<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.AdVA"%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Empresa"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.EmpresaDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href="css/menuAD.css" rel="stylesheet" type="text/css"/>
        <link href="css/default.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/alertify.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>   
        <% 
            HttpSession miSesion = request.getSession();
            if(miSesion.getAttribute("a") != null){
                AdVA a = (AdVA) miSesion.getAttribute("a");
           }else{
                response.sendRedirect("login.jsp?error=<h6><font color=red>Debe iniciar sesion para acceder!!</font></h6>");
            } 
        %>
          <div class="d-flex" id="wrapper">
	
	<!-- Sidebar -->
	 <div class="bg-dark border-right" id="sidebar-wrapper">
        <div class="sidebar-heading" style="font-family: 'Kaushan Script'; color: white;" >Job Opportunities</div>
	<div class="list-group list-group-flush">
	<a href="Principal2.jsp" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="185">Inicio</a>
	<a href="ControladorAdministrador1?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="186">Administrador</a>
	<a href="ControladorEstudiante?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="187">Estudiante</a>
	<a href="ControladorEmpresa?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="188">Empresa</a>
	</div>
	</div>
	<!-- /#sidebar-wrapper -->
	
	<!-- Page Content -->
	<div id="page-content-wrapper">
	
	<nav class="navbar navbar-expand-lg navbar-light bg-primary border-bottom">
	<button class="lang btn btn-primary" id="menu-toggle" key="189">Menu</button>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="190" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Traducir
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="lang translate dropdown-item" key="191" id="es">Español</a>
	<div class="dropdown-divider"></div>
        <a class="lang translate dropdown-item" key="192" id="en">Ingles</a>
	</div>
	</li>
	<li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="193" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Perfil
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">
                <img src="img/user.png" alt="60" width="60"/>
            </a>
	<a class="lang dropdown-item" key="194" href="#">Usuario</a>
	<a class="dropdown-item" href="#">${usu}</a>
	<div class="dropdown-divider"></div>
	<a class="lang dropdown-item" key="195" href="CerrarSeAd">Salir</a>
	</div>
	</li>
	</ul>
	</div>
	</nav>
        <style>
                .container-fon{
                    background: url(img/fondo-es.jpg) no-repeat;
                    background-size: cover;
                    height: 1000px;
                    width: 100%;
                }
        </style>
        <div class="container-fluid container-fon">
            <br>
              <h1 class="text-center" style="color: white; font-family: 'Kaushan Script';">LISTADO - DE - EMPRESAS</h1>    
            <br>
        <div class="row">
            <div class="col-1">
                <form action="PDFEM.jsp" target="_dark">
                <button class="lang btn btn-success" key="201" type="submit">Reporte</button>
                </form>
            </div>
            <div class="col-6">
                <form action="PDFEM1.jsp" target="_dark">
                  <button class="lang btn btn-success" key="" type="submit">Reporte-Filtrado</button>
                  <input type="text" name="txtparametro" size="35"/>
                </form>
            </div>
            <div class="col-4">
                        <label style="color: white; font-size: 20px;">Buscar</label>
                        <input id="searchTerm" type="text" style="background-color: white" onkeyup="doSearch()">
            </div>
        </div>
        <br>
        <div class="col-sm-12 col-md-12" id="reporte">
            <table class="table table-bordered table-striped table-dark" id="datos">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>NIT</th>
                                    <th class="lang" key="196">Razon Social</th>
                                    <th class="lang" key="197">Representante Legal</th>
                                    <th class="lang" key="198">Usuario</th>
                                    <th class="lang" key="199">ACCIONES</th>
                                </tr>
                            </thead>
                            <%
                                EmpresaDAO dao=new EmpresaDAO();
                                List<Empresa>list=dao.listar();
                                Iterator<Empresa>iter=list.iterator();
                                Empresa em=null;
                                while(iter.hasNext()){
                                    em=iter.next();
                                                             
                            %>
                            <tbody>                           
                                    <tr>
                                        <td><%= em.getId()%></td>
                                        <td><%= em.getNit()%></td>
                                        <td><%= em.getRazon_social()%></td>
                                        <td><%= em.getRepresentante_legal()%></td>
                                        <td><%= em.getUsuario()%></td>
                                        <td>
                                            <input type="hidden" id="idp" value="${em.getId()}">
                                            <a id="btnDelete" class="lang btn btn-danger" key="200" href="ControladorEmpresa?accion=eliminar&id=<%= em.getId()%>">Eliminar</a>
                                          
                                        </td>
                                    </tr>
                                    <%}%>
                            </tbody>
                        </table>
                    </div> 
                </div>
            </div>
        </div>                   
        <!-- Bootstrap core JavaScript -->
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <script src="js/BuscadorTabla.js" type="text/javascript"></script>
  <!-- Custom scripts for this template -->
  <!--alertas-->
  <script src="js/alertify.min.js" type="text/javascript"></script>
  <!--validar-->
  <script src="js/validar.js" type="text/javascript"></script>
  
  <script src="js/menuAD.js" type="text/javascript"></script>
  <script src="js/idioma1.js" type="text/javascript"></script>
    </body>
</html>

