<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Vacante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.VacanteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.EsVA"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href="css/menuAD.css" rel="stylesheet" type="text/css"/>
        <link href="css/alertify.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/default.min.css" rel="stylesheet" type="text/css"/>
        <title>Estudiante</title>
    </head>
    <body>
        <%
            HttpSession miSesion = request.getSession();
            if(miSesion.getAttribute("es") != null){
                EsVA es = (EsVA) miSesion.getAttribute("es");
           }else{
                response.sendRedirect("loginEs.jsp?error=<h6><font color=red>Debe iniciar sesion para acceder!!</font></h6>");
            }
        %>
        <div class="d-flex" id="wrapper">
	
	<!-- Sidebar -->
	<div class="bg-dark border-right" id="sidebar-wrapper">
            <div class="sidebar-heading" style="font-family: 'Kaushan Script'; color: white;" >Job Opportunities</div>
	<div class="list-group list-group-flush">
	<a href="inicio4.jsp" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="202">Inicio</a>
	<a href="Controlador2?accion=add" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="203">Hoja de Vida</a>
	
	
	</div>
	</div>
	<!-- /#sidebar-wrapper -->
	
	<!-- Page Content -->
	<div id="page-content-wrapper">
	
	<nav class="navbar navbar-expand-lg navbar-light bg-primary border-bottom">
	<button class="lang btn btn-primary" id="menu-toggle" key="205">Menu</button>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="206" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Traducir
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="lang translate dropdown-item" key="207" id="es">Español</a>
	<div class="dropdown-divider"></div>
        <a class="lang translate dropdown-item" key="208" id="en">Ingles</a>
	</div>
	</li>
	<li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="209" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Perfil
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">
                <img src="img/user.png" alt="60" width="60"/>
            </a>
	<a class="lang dropdown-item" key="210" href="#">Usuario</a>
	<a class="dropdown-item" href="#">${usu}</a>
	<div class="dropdown-divider"></div>
	<a class="lang dropdown-item" key="211" href="CerrarSeEs">Salir</a>
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
            <h1 class="text-center" style="color: white; font-family: 'Kaushan Script';">VACANTES</h1>
            <br>
            <br>
            <div class="row">
             <div class="col-6">
                        <form action="PDFHV.jsp" target="_black">
                            <button type="submit" key="164" class="lang btn btn-success">Reporte Hoja de vida</button>
                            <input placeholder="Documento" type="text" name="txtparametro" size="35"/>
                        </form>
                     </div>
            <div class="col-6">
                        <label style="color: white; font-size: 20px;">Buscar</label>
                        <input id="searchTerm" type="text" style="background-color: white" onkeyup="doSearch()">
                </div>
            </div>
            <br>
            <br>
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="container mt-4 mb-4 col-lg-9">
                                <div class="card col-sm-12">
                                    <div class="card-body">
                                        <form action="ControladorPostulado" method="get" onsubmit="return validar5();">
                                            <div class="form-group text-center">
                                                <h3 class="lang" key="">Aplicar</h3>
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Nombre Completo</label>
                                                <input id="nombre1" type="text" name="txtNombreC" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Correo Electronico</label>
                                                <input id="correo1" type="text" name="txtCorreo" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Telefono o Celular</label>
                                                <input id="celular1" type="text" name="txtCelular" class="form-control">
                                            </div>
                                            <div class="modal-footer">
                                                <button id="agregar" type="submit" key="" value="Agregar" name="accion" class="lang btn btn-primary">Agregar</button>
                                                <%
                                                    out.println("<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>");
                                                    out.println("<script src='js/alertify.min.js'></script>");
                                                    out.println("<script>");
                                                    out.println("$(document).ready(function(){");
                                                    out.println("$('#agregar').click(function(){");
                                                    out.println("alertify.alert('Correcto', 'Aplicaste a esta vacante').set('label', 'ok',);");
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
                <table class="table table-striped table-dark" id="datos">
                <thead>
                    <tr>
                        <th scope="col">ACCION</th>
                        <th scope="col">NOMBRE-EMPRESA</th>
                        <th scope="col">ESPECIALIDAD-RE</th>
                        <th scope="col">CIUDAD</th>
                        <th scope="col">PERFIL-AS</th>
                        <th scope="col">FUNCIONES</th>
                        <th scope="col">VACANTES-DIS</th>
                    </tr>
                </thead>
                          <%
                                VacanteDAO dao=new VacanteDAO();
                                List<Vacante>list=dao.listar();
                                Iterator<Vacante>iter=list.iterator();
                                Vacante a=null;
                                while (iter.hasNext()) {
                                        a=iter.next();
                                        
                            %>
                <tbody>
                    <tr>
                        <td>
                            <a class="btn btn-success" data-toggle="modal" data-target="#exampleModal">Aplicar</a>
                        </td>
                        <td><%= a.getNombre_Empresa()%></td>
                        <td><%= a.getEspecialidad_Requerida()%></td>
                        <td><%= a.getCiudad()%></td>
                        <td><%= a.getPerfil_Aspirante()%></td>
                        <td><%= a.getFunciones()%></td>
                        <td><%= a.getVacantes_Disponibles()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
         </div>
        </div>
      </div>
        
        
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="js/menuAD.js" type="text/javascript"></script>
        <script src="js/alertify.min.js" type="text/javascript"></script>
        <script src="js/BuscadorTabla.js" type="text/javascript"></script>
        <script src="js/idioma2.js" type="text/javascript"></script>
        <script src="js/validar.js" type="text/javascript"></script>
    </body>
</html>
