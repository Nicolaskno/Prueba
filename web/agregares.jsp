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
        <style>
            *{
    box-sizing: border-box;
}

body{
    margin: 0;
    font-family: sans-serif;
    overflow-x: hidden;
}

h2 {
    color: #000000;
    text-align: center;
}

.form-cv{
    width: 60%;
    height: 2650px;
    margin: auto;
     background-color: rgba(0,0,0,.6);
     opacity: 0.9;
    border-radius: 7px;
    margin-bottom: 50px;
}

.lang{
    color: white;
}

.form-titulo{
    background: #0e19f2;
    color: #fff;
    padding: 10px;
    text-align: left;
    font-weight: 100;
    font-size: 30px;
    border-top-left-radius: 7px;
    border-top-right-radius: 7px;
    border-bottom: 5px solid #000000;

}

.row{
    padding: 10px 30px;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.col{
   margin-bottom: -15px;
   font-size: 16px;
   border-radius: 3px;

}

input{
   margin-bottom: 0px;
   font-size: 16px;
   border-radius: 3px;
   border: 1px solid darkgrey;
}

.form-control{
    width: 100%;
}


#sidebar-wrapper {
	min-height: 100vh;
	margin-left: -15rem;
	-webkit-transition: margin .25s ease-out;
	-moz-transition: margin .25s ease-out;
	-o-transition: margin .25s ease-out;
	transition: margin .25s ease-out;
	}

	#sidebar-wrapper .sidebar-heading {
	padding: 0.875rem 1.25rem;
	font-size: 1.2rem;
	}

	#sidebar-wrapper .list-group {
	width: 15rem;
	}

	#page-content-wrapper {
	min-width: 100vw;
	}

	#wrapper.toggled #sidebar-wrapper {
	margin-left: 0;
	}

	@media (min-width: 768px) {
	#sidebar-wrapper {
	margin-left: 0;
	}

	#page-content-wrapper {
	min-width: 0;
	width: 100%;
	}

	#wrapper.toggled #sidebar-wrapper {
	margin-left: -15rem;
	}
	}
        </style>
        <title>Hoja de vida</title>
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
	<a href="inicio4.jsp" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="212">Inicio</a>
	<a href="Controlador2?accion=add" class="lang list-group-item list-group-item-action bg-dark" style="color: white;" key="213">Hoja de Vida</a>
	
	</div>
	</div>
	<!-- /#sidebar-wrapper -->

	<!-- Page Content -->
	<div id="page-content-wrapper">

	<nav class="navbar navbar-expand-lg navbar-light bg-primary border-bottom ">
	<button class="lang btn btn-primary" id="menu-toggle" key="215">Menu</button>

	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
	<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
        <li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="216" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Traducir
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="lang translate dropdown-item" key="217" id="es">Español</a>
	<div class="dropdown-divider"></div>
        <a class="lang translate dropdown-item" key="218" id="en">Ingles</a>
	</div>
	</li>
	<li class="nav-item dropdown">
            <a class="lang nav-link dropdown-toggle" key="219" style="color: white;" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	Perfil
	</a>
	<div class="dropdown-menu dropdown-menu-right text-center" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">
                <img src="img/user.png" alt="60" width="60"/>
            </a>
	<a class="lang dropdown-item" key="220" href="#">Usuario</a>
	<a class="dropdown-item" href="#">${usu}</a>
	<div class="dropdown-divider"></div>
	<a class="lang dropdown-item" key="221" href="CerrarSeEs">Salir</a>
	</div>
	</li>
	</ul>
	</div>
	</nav>
       
        <style>
                .container-fon{
                    background: url(img/fondo-es.jpg);
                    height: 2730px;
                }
        </style>
         <div class="container-fluid container-fon">
             <br>
        <div class="">
                <form action="Controlador2" class="form-cv" method="get" onsubmit="return validar1();" >
                <h2 class="form-titulo lang" key="222">Datos personales</h2>
            <div class="row">
                <div class="col">
              <label class="lang" key="223">Nombres</label>
              <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtNombres" name="txtNom">
                </div>
                <div class="col">
              <label class="lang" key="224">Apellidos</label>
               <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtApellidos" name="txtApell">
                </div>
            </div>
            <div class="row">
                <div class="col">
            <label class="lang" key="225" for="txtTipoDoc">Tipo documento
            <span style="color: #fb0707;">*</span>
            </label>
            <select class="form-control" id="txtTipoDoc" name="txtTiDoc">
                <option class="" style="color: black;" key="226">Cedula ciudadania</option>
                <option class="" key="227">Cedula extranjeria</option>
                <option class="" key="228">Pasaporte</option>
            </select>
                </div>
                <div class="col">
            <label class="lang" key="229">Numero documento</label>
            <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtNumDocumen" name="txtNumDoc">
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="230" for="txtFechNaci">Fecha de nacimiento</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" min="1960-01-01" max="2001-01-01" id="txtFechNaci" name="txtFechNa">
                </div>
                <div class="col">
                <label class="lang" key="231">Lugar de Nacimiento</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtLugNaci" name="txtLugNac">
                </div>
            </div>
            <div class="row">
                  <div class="col">
            <label class="lang" key="232" for="txtDepar">Departamento</label>
            <span style="color: #fb0707;">*</span>
            <select class="form-control" id="txtDepar" name="txtDepa">
                 <option selected>Amazonas</option>
                    <option>Antioquia</option>
                    <option>Arauca</option>
                    <option>Atlantico</option>
                    <option>Bolivar</option>
                    <option>Boyaca</option>
                    <option>Bogota</option>
                    <option>Caldas</option>
                    <option>Caqueta</option>
                    <option>Casanare</option>
                    <option>Cauca</option>
                    <option>Cesar</option>
                    <option>Choco</option>
                    <option>Cordoba</option>
                    <option>Cundinamarca</option>
                    <option>Guainia</option>
                    <option>Guaviare</option>
                    <option>Huila</option>
                    <option>La Guajira</option>
                    <option>Magdalena</option>
                    <option>Meta</option>
                    <option>Nariño</option>
                    <option>Norte de Santander</option>
                    <option>Putumayo</option>
                    <option>Quindio</option>
                    <option>Risaralda</option>
                    <option>San Andres</option>
                    <option>Santander</option>
                    <option>Sucre</option>
                    <option>Tolima</option>
                    <option>Valle del Cauca</option>
                    <option>Vaupes</option>
                    <option>Vichada</option>
            </select>
                </div>
                <div class="col">
            <label class="lang" key="233">País</label>
            <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtPais" name="txtPai">
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="234" for="txtEstCiv">Estado civil</label>
                <span style="color: #fb0707;">*</span>
            <select class="form-control" id="txtEstCiv" name="txtEstaCivi">
                <option class="" style="color: black;" key="235">Casado(a)</option>
                    <option class="" style="color: black;" key="236">Union Libre</option>
                    <option class="" style="color: black;" key="237">Soltero(a)</option>
            </select>
                </div>
                <div class="col">
                <label class="lang" key="238">Dirección:</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtDirec" name="txtDir">
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="239">Barrio</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtBarrio" name="txtBarr">
                </div>
                <div class="col">
                <label class="lang" key="240" for="txtLocal">Localidad</label>
                <span style="color: #fb0707;">*</span>
            <select class="form-control" id="txtLocal" name="txtLocalid">
                    <option>Usaquen</option>
                    <option>Chapinero</option>
                    <option>Santa Fe</option>
                    <option>San Cristobal</option>
                    <option>Usme</option>
                    <option>Tunjuelito</option>
                    <option>Bosa</option>
                    <option>Kennedy</option>
                    <option>Fontibon</option>
                    <option>Engativa</option>
                    <option>Suba</option>
                    <option>Barrios Unidos</option>
                    <option>Teusaquillo</option>
                    <option>Los Martires</option>
                    <option>Antonio Nariño</option>
                    <option>Puente Aranda</option>
                    <option>La Candelaria</option>
                    <option>Rafael Uribe Uribe</option>
                    <option>Ciudad Bolivar</option>
                    <option>Suma Paz</option>
            </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="241">Teléfono celular</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtTelCelula" name="txtTelCel">
                </div>
                <div class="col">
                <label class="lang" key="242">Teléfono fijo</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtTelFijo" name="txtTelFij">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label class="lang" key="243" for="txtSex">Sexo</label>
                    <span style="color: #fb0707;">*</span><br>
                    <select class="form-control" id="txtSex" name="txtLocalid">
                    <option>Masculino</option>
                    <option>Femenino</option>
                    </select>
                </div>
                <div class="col">
                <label class="lang" key="246">Facultad</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtFacult" name="txtFacu">
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="247">Perfil laboral</label>
                <span style="color: #fb0707;">*</span>
            <textarea class="form-control" type="text" id="txtPerfLabo" name="txtPerLab"></textarea>
                </div>
            </div>
                <br>
                <h2 class="lang form-titulo" key="248">Experiencia laboral</h2>
            <div class="row">
                <div class="col">
                <label class="lang" key="249">Nombre empresa</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtNomEmp" name="txtNombEmpre">
                </div>
                <div class="col">
                <label class="lang" key="250">Jefe inmediato</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtJefeInm" name="txtJefeInmedi">
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="251">Cargo</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtCarg" name="txtCargo">
                </div>
                <div class="col">
                <label class="lang" key="252" for="txtTipoCont">Tipo contrato</label>
                <span style="color: #fb0707;">*</span>
            <select class="form-control" id="txtTipoCont" name="txtTiContra">
                <option class="" style="color: black;" key="253">Termino fijo</option>
                <option class="" style="color: black;" key="254">Termino indefinido</option>
                <option class="" style="color: black;" key="255">Prestacion de servicios</option>
                <option class="" style="color: black;" key="256">Obra o labor</option>
            </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="257">Fecha entrada</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" id="txtFechEnt" name="txtFechaEntr">
                </div>
                <div class="col">
                <label class="lang" key="258">Fecha salida</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" id="txtFechSal" name="txtFechaSalid">
                </div>
            </div>
                <br>
                 <h2 class="lang form-titulo" key="259">Estudios básicos / primaria</h2>
            <div class="row">
                <div class="col">
                <label class="lang" key="260">Nombre institucion</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtNomIns" name="txtNomInsti">
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="261">Fecha inicio</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" id="txtFechIni" name="txtFechInici">
                </div>
                <div class="col">
                <label class="lang" key="262">Fecha finalizacion</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" id="txtFechFin" name="txtFechaFinal">
                </div>
            </div>
                 <br>
                 <h2 class="lang form-titulo" key="263">Estudios básicos / bachiller</h2>
            <div class="row">
                <div class="col">
                <label class="lang" key="264">Nombre institucion</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtNomInst" name="txtNomInstitu">
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="265">Fecha inicio</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" id="txtFechInic" name="txtFechInicio">
                </div>
                <div class="col">
                <label class="lang" key="266">Fecha finalizacion</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" id="txtFechFinal" name="txtFechaFinaliza">
                </div>
            </div>
                 <br>
                 <h2 class="lang form-titulo" key="267">Estudios superiores-1</h2>
            <div class="row">
                <div class="col">
                <label class="lang" key="268">Nombre institucion</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtNomInst1" name="txtNoInsti">
                </div>
                <div class="col">
            <label class="lang" key="269" for="txtTiObten">Titulo obtenido</label>
            <span style="color: #fb0707;">*</span>
            <select class="form-control" id="txtTiObten" name="txtTiOb">
                <option class="" style="color: black;" key="270">Tecnico</option>
                <option class="" style="color: black;" key="271">Tecnologo</option>
                <option class="" style="color: black;" key="272">Profesional</option>
                <option class="" style="color: black;" key="273">Maestria</option>
                <option class="" style="color: black;" key="274">Doctorado</option>
            </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
                <label class="lang" key="275">Fecha inicio</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" id="txtFechInic2" name="txtFeInicial">
                </div>
                <div class="col">
                <label class="lang" key="276">Fecha finalizacion</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="date" id="txtFechFinal3" name="txtFechaFinalizac">
                </div>
            </div>
                 <br>
                 <h2 class="lang form-titulo" key="277">Estudios superiores-2</h2>
            <div class="row">
                <div class="col">
            <label class="lang" key="278">Nombre institucion</label>
            <input class="form-control" id="" type="text" name="txtNInstitu">
                </div>
                <div class="col">
            <label class="lang" key="279" for="txtTituObtenid">Titulo obtenido</label>
            <select class="form-control" id="txtTituObtenid" name="txtTObtenido">
                <option class="" style="color: black;" key="280">Tecnico</option>
                <option class="" style="color: black;" key="281">Tecnologo</option>
                <option class="" style="color: black;" key="282">Profesional</option>
                <option class="" style="color: black;" key="283">Maestria</option>
                <option class="" style="color: black;" key="284">Doctorado</option>
            </select>
                </div>
            </div>
            <div class="row">
                <div class="col">
            <label class="lang" key="285">Fecha inicio</label>
            <input class="form-control" id="" type="date" name="txtFInicio">
                </div>
                <div class="col">
            <label class="lang" key="286">Fecha finalizacion</label>
            <input class="form-control" id="" type="date" name="txtFFina">
                </div>
            </div>
                 <br>
                 <h2 class="lang form-titulo" key="287">Referencias personales-1</h2>
            <div class="row">
                <div class="col">
            <label class="lang" key="288">Nombres referencia</label>
            <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtNoRef" name="txtNomRefer">
                </div>
                <div class="col">
                <label class="lang" key="289">Ocupacion</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtOcup" name="txtOcupac">
                </div>
            </div>
            <div class="row">
              <div class="col">
                <label class="lang" key="290">Dirección referencia</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtDirec1" name="txtDir1">
              </div>
              <div class="col">
                <label class="lang" key="291">Teléfono contacto</label>
                <span style="color: #fb0707;">*</span>
            <input class="form-control" type="text" id="txtTelConta" name="txtTelContact">
                </div>
            </div>
               <br>
               <br>
                 <h2 class="lang form-titulo" key="292">Referencias personales-2</h2>
            <div class="row">
                <div class="col">
                <label class="lang" key="293">Nombres referencia</label>
                <input class="form-control" type="text" id="" name="txtNomRefer1">
                </div>
                <div class="col">
                    <label class="lang" key="294">Ocupacion</label>
                    <input class="form-control" type="text" id="" name="txtOcupac1">
                </div>
            </div>
            <div class="row">
              <div class="col">
                    <label class="lang" key="295">Dirección referencia</label>
                    <input class="form-control" type="text" id="" name="txtDir11">
              </div>
              <div class="col">
                    <label class="lang" key="296">Teléfono contacto</label>
                    <input class="form-control" type="text" id="" name="txtTelContact1">
                </div>
            </div>
               <br>
            <div class="container col-12 text-center">
                <button id="agregar" type="submit" key="297" name="accion" value="Enviar" class="lang btn btn-success">Guardar</button>
                <%
                              out.println("<script src='https://code.jquery.com/jquery-3.4.1.slim.min.js'></script>");
                              out.println("<script src='js/alertify.min.js'></script>");
                              out.println("<script>");
                              out.println("$(document).ready(function(){");
                              out.println("$('#agregar').click(function(){");
                              out.println("alertify.alert('Correcto', 'Hoja de vida regirada').set('label', 'ok',);");
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

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="js/validar2.js" type="text/javascript"></script>
        <script src="js/menuAD.js" type="text/javascript"></script>
        <script src="js/idioma1.js" type="text/javascript"></script>
        <script src="js/alertify.min.js" type="text/javascript"></script>
            </body>
        </html>


