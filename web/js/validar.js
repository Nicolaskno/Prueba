
//validar login administrador
function validar(){
    var usuario, clave, expresionco;
    usuario = document.getElementById("usuario").value;
    clave = document.getElementById("clave").value;
    //formato correo
    expresionco = /\w+@\w+\.+[a-z]/;
    
    if(usuario === ""){
        alertify.alert("Error", "El campo correo esta vacio").set('label', 'ok');
        return false;
    }
    else if(clave === ""){
        alertify.alert("Error", "El campo clave esta vacio").set('label', 'ok');
        return false;
    }else if(!expresionco.test(usuario)){
        alertify.alert("Error", "El correo no es valido").set('label', 'ok');
        return false;
    }
}
//validar login y registro estudiante
function validar1(){
    var nombre, apellido, usuario, clave, expresionco;
    nombre = document.getElementById("nombre").value;
    apellido = document.getElementById("apellido").value;
    usuario = document.getElementById("usuario1").value;
    clave = document.getElementById("clave1").value;
    //formato correo
    expresionco = /\w+@\w+\.+[a-z]/;
    
    if(nombre === ""){
        alertify.alert("Error", "El campo nombres esta vacio").set('label', 'ok');
        return false;
    }
    else if(apellido === ""){
        alertify.alert("Error", "El campo apellidos esta vacio").set('label', 'ok');
        return false;
    }
    else if(usuario === ""){
        alertify.alert("Error", "El campo correo esta vacio").set('label', 'ok');
        return false;
    }
    else if(clave === ""){
        alertify.alert("Error", "El campo clave esta vacio").set('label', 'ok');
        return false;
    }else if(!expresionco.test(usuario)){
        alertify.alert("Error", "El correo no es valido").set('label', 'ok');
        return false;
    }
}


//validar login empresa
function validar2(){
    var usuario, clave, expresionco;
    usuario = document.getElementById("usuario2").value;
    clave = document.getElementById("clave2").value;
    //formato correo
    expresionco = /\w+@\w+\.+[a-z]/;
    
    if(usuario === ""){
        alertify.alert("Error", "El campo correo esta vacio").set('label', 'ok');
        return false;
    }
    else if(!expresionco.test(usuario)){
        alertify.alert("Error", "El correo no es valido").set('label', 'ok');
        return false;
    }
    else if(clave === ""){
        alertify.alert("Error", "El campo clave esta vacio").set('label', 'ok');
        return false;
    }
}

function validar3(){
    var nit, raz, rep, usuario, clave, expresionco;
    nit = document.getElementById("nit").value;
    raz = document.getElementById("raz").value;
    rep = document.getElementById("rep").value;
    usuario = document.getElementById("usuario3").value;
    clave = document.getElementById("clave3").value;
    //formato correo
    expresionco = /\w+@\w+\.+[a-z]/;
    
    if(nit === ""){
        alertify.alert("Error", "El campo NIT esta vacio").set('label', 'ok');
        return false;
    }
    else if(isNaN(nit)){
        alertify.alert("Error", "El campo NIT solo debe contener numeros").set('label', 'ok');
        return false;
    }
    else if(raz === ""){
        alertify.alert("Error", "El campo Razon Social esta vacio").set('label', 'ok');
        return false;
    }
    else if(rep === ""){
        alertify.alert("Error", "El campo Representante Legal esta vacio").set('label', 'ok');
        return false;
    }
    else if(usuario === ""){
        alertify.alert("Error", "El campo Correo esta vacio").set('label', 'ok');
        return false;
    }
    else if(!expresionco.test(usuario)){
        alertify.alert("Error", "El correo no es valido").set('label', 'ok');
        return false;
    }
    else if(clave === ""){
        alertify.alert("Error", "El campo Clave esta vacio").set('label', 'ok');
        return false;
    }
}

function validar4(){
    var doc, nom, ape, usuario, clave,agre, expresionco;
    doc = document.getElementById("doc").value;
    nom = document.getElementById("nom").value;
    ape = document.getElementById("ape").value;
    usuario = document.getElementById("usuario4").value;
    clave = document.getElementById("clave4").value;
    agre = document.getElementById("agregar").value;
    //formato correo
    expresionco = /\w+@\w+\.+[a-z]/;
    
    if(doc === ""){
        alertify.alert("Error", "El campo Documento esta vacio").set('label', 'ok');
        return false;
    }
    else if(isNaN(doc)){
        alertify.alert("Error", "El campo Documento solo debe contener numeros").set('label', 'ok');
        return false;
    }
    else if(nom === ""){
        alertify.alert("Error", "El campo Nombres esta vacio").set('label', 'ok');
        return false;
    }
    else if(ape === ""){
        alertify.alert("Error", "El campo Apellidos esta vacio").set('label', 'ok');
        return false;
    }
    else if(usuario === ""){
        alertify.alert("Error", "El campo Correo Electronico esta vacio").set('label', 'ok');
        return false;
    }
    else if(!expresionco.test(usuario)){
        alertify.alert("Error", "El correo no es valido").set('label', 'ok');
        return false;
    }
    else if(clave === ""){
        alertify.alert("Error", "El campo Clave esta vacio").set('label', 'ok');
        return false;
    }
}


function validar5(){
    var nombre,correo,celular;
    nombre = document.getElementById("nombre1").value;
    correo = document.getElementById("correo1").value;
    celular = document.getElementById("celular1").value;
    
     if(nombre === ""){
        alertify.alert("Error", "El campo nombre esta vacio").set('label', 'ok');
        return false;
    }else if(correo === ""){
        alertify.alert("Error", "El campo correo esta vacio").set('label', 'ok');
        return false;
    }else if(celular === ""){
        alertify.alert("Error", "El campo celular o telefono esta vacio").set('label', 'ok');
        return false;
    }
}

function validar6(){
    var nomem,especi,ciu,per,fun,van;
    nomem = document.getElementById("txtnomnreEm").value;
    especi = document.getElementById("txtEspeci").value;
    ciu = document.getElementById("txtCiu").value;
    per = document.getElementById("txtPer").value;
    fun = document.getElementById("txtFun").value;
    van = document.getElementById("txtVaD").value;
    
    if(nomem === ""){
       alertify.alert("Error", "El campo Nombre empresa esta vacio").set('label', 'ok');
        return false;
    }else if(especi === ""){
        alertify.alert("Error", "El campo Especialidad reuquerida esta vacio").set('label', 'ok');
        return false;
    }else if(ciu === ""){
        alertify.alert("Error", "El campo Ciudad esta vacio").set('label', 'ok');
        return false;
    }else if(per === ""){
        alertify.alert("Error", "El Perfil del aspirante esta vacio").set('label', 'ok');
        return false;
    }else if(fun === ""){
        alertify.alert("Error", "El Funciones a desarrollar esta vacio").set('label', 'ok');
        return false;
    }else if(van === ""){
        alertify.alert("Error", "El campo Vacantes disponibles esta vacio").set('label', 'ok');
        return false;
    }
}