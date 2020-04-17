<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.AdVA"%>
<%@page import="Modelo.Administrador"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.AdministradorDAO"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>
<%@page import="java.sql.*"%>


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
        <!--Validar Sesion-->
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
	<a href="Principal2.jsp" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="142">Inicio</a>
	<a href="ControladorAdministrador1?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="143">Administrador</a>
	<a href="ControladorEstudiante?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="144">Estudiante</a>
	<a href="ControladorEmpresa?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="145">Empresa</a>
	</div>
	</div>
	<!-- /#sidebar-wrapper -->
	
	<!-- Page Content -->
	<div id="page-content-wrapper">
	
	<nav class="navbar navbar-expand-lg navbar-light bg-primary border-bottom">
	<button class="lang btn btn-primary" id="menu-toggle" key="146">Menu</button>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="147" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Traducir
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="lang translate dropdown-item" key="148" id="es">Español</a>
	<div class="dropdown-divider"></div>
        <a class="lang translate dropdown-item" key="149" id="en">Ingles</a>
	</div>
	</li>
	<li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="150" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Perfil
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">
                <img src="img/user.png" alt="60" width="60"/>
            </a>
	<a class="lang dropdown-item" key="151" href="#">Usuario</a>
	<a class="dropdown-item" href="#">${usu}</a>
	<div class="dropdown-divider"></div>
	<a class="lang dropdown-item" key="152" href="CerrarSeAd">Salir</a>
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
            <h1 class="text-center" style="color: white; font-family: 'Kaushan Script';">LISTADO - DE - ADMINISTRADORES</h1>
        <br>              
            <div class="col-sm-12 col-md-12">
                <div class="row">
                    <div class="col-1">  
                <button type="button" class="lang btn btn-primary" key="165" href="ControladorAdministrador?accion=add" data-toggle="modal" data-target="#exampleModal">Agregar</button>
                    </div>
                    <div class="col-1">
                        <form action="PDFAD.jsp" target="_black">
                    <button type="submit" key="166" class="lang btn btn-success">Reporte</button>
                        </form>
                     </div>
                    <div class="col-6">
                        <form action="PDFAD1.jsp" target="_black">
                            <button type="submit" key="164" class="lang btn btn-success">Reporte-Filtrado</button>
                            <input placeholder=" Correo Electronico" type="text" name="txtparametro" size="35"/>
                        </form>
                     </div>
                    <div class="col-4">
                        <label style="color: white; font-size: 20px;">Buscar</label>
                        <input id="searchTerm" type="text" style="background-color: white" onkeyup="doSearch()">
                </div>
                </div>
                <br>
                <!agregar>
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="container mt-4 mb-4 col-lg-12">
                                <div class="card col-sm-12">
                                    <div class="card-body">
                                        <form action="ControladorAdministrador1" method="get" onsubmit="return validar4();" >
                                            <div class="form-group text-center">
                                                <h3 class="lang" key="153">Registrar Administrador</h3>
                                                <img src="img/user.png" alt="70" width="170"/>
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="154">Documento</label>
                                                <input id="doc" type="text" name="txtDocumento" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="155">Nombres</label>
                                                <input id="nom" type="text" name="txtNombres" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="156">Apellidos</label>
                                                <input id="ape" type="text" name="txtApellidos" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="157">Correo Electronico</label>
                                                <input id="usuario4" type="text" name="txtUsuario" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="158">Contraseña</label>
                                                <input id="clave4" type="password" name="txtClave" class="form-control">
                                            </div>
                                            <div class="modal-footer">
                                                <button id="agregar" type="submit" key="159" value="Agregar" name="accion" class="lang btn btn-primary">Agregar</button>
                                                <%                           
                                                   out.println("<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>");
                                                   out.println("<script src='js/alertify.min.js'></script>");
                                                   out.println("<script>");
                                                   out.println("$(document).ready(function(){");
                                                   out.println("$('#agregar').click(function(){");
                                                   out.println("alertify.alert('Correcto', 'Administrador Registrado').set('label', 'ok',);");
                                                   out.println("});");
                                                   out.println("});");
                                                   out.println("</script>");
                                                 %>
                                            </div>
                                        </form>
                                    </div>                         
                                </div>
                            </div>             
                        </div>           
                    </div>
                </div>                            
                <div class="col-sm-12 col-md-12">
                    <table class="table table-bordered table-striped table-dark" id="datos">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th class="lang" key="160">Documento</th>
                                    <th class="lang" key="161">Nombres</th>
                                    <th class="lang" key="162">Apellidos</th>
                                    <th class="lang" key="163">Usuario</th>
                                </tr>
                            </thead>
                            <%
                                AdministradorDAO dao=new AdministradorDAO();
                                List<Administrador>list=dao.listar();
                                Iterator<Administrador>iter=list.iterator();
                                Administrador a=null;
                                while (iter.hasNext()) {
                                        a=iter.next();
                                        
                            %>
                            
                     
                            <tbody> 
                                    <tr>
                                        <td><%= a.getId_administrador()%></td>
                                        <td><%= a.getDocumento()%></td>
                                        <td><%= a.getNombres()%></td>
                                        <td><%= a.getApellidos()%></td>
                                        <td><%= a.getUsuario()%></td>                                    
                                    </tr>
                                    <%}%>      
                            </tbody>
                        </table>
                         </div>
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
