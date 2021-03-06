
<%@page import="Modelo.Postulado"%>
<%@page import="ModeloDAO.PostuladoDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Vacante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.VacanteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.EmVA"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href="css/menuAD.css" rel="stylesheet" type="text/css"/>
         <link href="css/estilos.css" rel="stylesheet">
         <link href="css/alertify.min.css" rel="stylesheet" type="text/css"/>
         <link href="css/default.min.css" rel="stylesheet" type="text/css"/>
        <title>Empresa</title>
    </head>
    <body>
         <%
            HttpSession miSesion = request.getSession();
            if(miSesion.getAttribute("e") != null){
                EmVA e = (EmVA) miSesion.getAttribute("e");
           }else{
                response.sendRedirect("loginEm.jsp?error=<h6><font color=red>Debe iniciar sesion para acceder!!</font></h6>");
            }
        %>
        
        <%
        String action=request.getParameter("accion");        
        %>
        <div class="d-flex" id="wrapper">
	
	<!-- Sidebar -->
        <div class="bg-dark border-right" id="sidebar-wrapper">
        <div class="sidebar-heading" style="font-family: 'Kaushan Script'; color: white;" >Job Opportunities</div>
	<div class="list-group list-group-flush">
	<a href="ControladorVacante?accion=listar" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="168">Inicio</a>
	<a href="" class="lang list-group-item list-group-item-action bg-dark" data-toggle="modal" data-target="#exampleModal" style="color: white;" key="">Registrar Vacante</a>
	<a href="" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="">Postulados a Vacante</a>
	</div>
	</div>
	<!-- /#sidebar-wrapper -->
	
	<!-- Page Content -->
	<div id="page-content-wrapper">
	
	<nav class="navbar navbar-expand-lg navbar-light bg-primary border-bottom">
	<button class="lang btn btn-primary" id="menu-toggle" key="172">Menu</button>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="173" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Traducir
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="lang translate dropdown-item" key="174" id="es">Español</a>
	<div class="dropdown-divider"></div>
        <a class="lang translate dropdown-item" key="175" id="en">Ingles</a>
	</div>
	</li>
	<li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="176" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Perfil
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">
                <img src="img/user.png" alt="60" width="60"/>
            </a>
	<a class="lang dropdown-item" key="177" href="#">Usuario</a>
	<a class="dropdown-item" href="#">${usu}</a>
	<div class="dropdown-divider"></div>
	<a class="lang dropdown-item" key="178" href="CerrarSeEm">Salir</a>
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
            <h1 class="text-center" style="color: white; font-family: 'Kaushan Script';">POSTULADOS</h1>
            <br>
            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="container mt-4 mb-4 col-lg-9">
                                <div class="card col-sm-12">
                                    <div class="card-body">
                                        <form action="ControladorVacante" method="get" onsubmit="return validar6();" >
                                            <div class="form-group text-center">
                                                <h3 class="lang" key="">Registrar Vacante</h3>
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Nombre Empresarial</label>
                                                <input id="txtnomnreEm" type="text" name="txtNombreEmpresa" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Especialidad Requerida</label>
                                                <input id="txtEspeci" type="text" name="txtEspecialidad" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Ciudad</label>
                                                <input id="txtCiu" type="text" name="txtCiudad" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Perfil del Aspirante</label>
                                                <textarea id="txtPer" type="text" name="txtPerfil" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Funciones a Desarrollar</label>
                                                <textarea id="txtFun" type="text" name="txtFunciones" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group">
                                                <label class="lang" key="">Vacantes Disponibles</label>
                                                <input id="txtVaD" type="text" name="txtVacantes" class="form-control">
                                            </div>
                                            <div class="modal-footer">
                                                <button id="agregar" type="submit" key="" value="Agregar" name="accion" class="lang btn btn-primary">Agregar</button>
                                                <%
                                                    out.println("<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>");
                                                    out.println("<script src='js/alertify.min.js'></script>");
                                                    out.println("<script>");
                                                    out.println("function validar6(){");
                                                    out.println("var nomem,especi,ciu,per,fun,van;");
                                                    out.println("nomem = document.getElementById('txtnomnreEm').value;");
                                                    out.println("especi = document.getElementById('txtEspeci').value;");
                                                    out.println("ciu = document.getElementById('txtCiu').value;");
                                                    out.println("per = document.getElementById('txtPer').value;");
                                                    out.println("fun = document.getElementById('txtFun').value;");
                                                    out.println("van = document.getElementById('txtVaD').value;");
                                                    out.println(" if(nomem === ''){");
                                                    out.println("alertify.alert('Error', 'El campo Nombre Empresarial esta vacio').set('label', 'ok');");
                                                    out.println("return false;");
                                                    out.println("}else if(especi === ''){");
                                                    out.println("alertify.alert('Error', 'El campo Especialidad Requerida esta vacio').set('label', 'ok');");
                                                    out.println("return false;");
                                                    out.println("}else if(ciu === ''){");
                                                    out.println("alertify.alert('Error', 'El campo Ciudad esta vacio').set('label', 'ok');");
                                                    out.println("return false;");
                                                    out.println("}else if(per === ''){");
                                                    out.println("alertify.alert('Error', 'El campo Perfil del Aspirante esta vacio').set('label', 'ok');");
                                                    out.println("return false;");
                                                    out.println("}else if(fun === ''){");
                                                    out.println("alertify.alert('Error', 'El campo Funciones a Desarrollar esta vacio').set('label', 'ok');");
                                                    out.println("return false;");
                                                    out.println("}else if(van === ''){");
                                                    out.println("alertify.alert('Error', 'El campo Vacantes Disponibles esta vacio').set('label', 'ok');");
                                                    out.println("return false;");
                                                    out.println("}");
                                                    out.println("}");
                                                    out.println("</script>");
                                                    out.println("<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>");
                                                    out.println("<script src='js/alertify.min.js'></script>");
                                                    out.println("<script>");
                                                    out.println("$(document).ready(function(){");
                                                    out.println("$('#agregar').click(function(){");
                                                    out.println("alertify.alert('Correcto', 'Vacante Registrada').set('label', 'ok',);");
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
            <br>

            <table class="table table-striped table-dark">
                <thead>
                    <tr>
                        <th scope="col">NOMBRES</th>
                        <th scope="col">CORREO</th>
                        <th scope="col">TELEFONO O CELULAR</th>
                    </tr>
                </thead>
                          <%
                                PostuladoDAO dao=new PostuladoDAO();
                                List<Postulado>list=dao.listar();
                                Iterator<Postulado>iter=list.iterator();
                                Postulado p=null;
                                while (iter.hasNext()) {
                                        p=iter.next();
                                        
                            %>
                <tbody>
                    <tr>
                        <td><%= p.getNombre_completo()%></td>
                        <td><%= p.getCorreo()%></td>
                        <td><%= p.getCelular()%></td>
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
  <script src="js/alertify.min.js" type="text/javascript"></script>
  <script src="js/menuAD.js" type="text/javascript"></script>
  <script src="js/validar.js" type="text/javascript"></script>
  <script src="js/idioma1.js" type="text/javascript"></script>
    </body>
</html>
