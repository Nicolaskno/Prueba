function validar1(){
    var nom, apell, numd, fechna, lugna, pai, dir, barr, tecel, tefij, facul, perlab, nomemp, jefinm, carg, tipocontra, fechent, fechsal, nomins, fechini, fechfin, nominst, fechinici, fechfinali, nominst1, fechinici2, fechfinali3, nomrefer, ocupac, dir1, telcontact;
    nom = document.getElementById("txtNombres").value;
    apell = document.getElementById("txtApellidos").value;
    numd = document.getElementById("txtNumDocumen").value;
    fechna = document.getElementById("txtFechNaci").value;
    lugna = document.getElementById("txtLugNaci").value;
    pai = document.getElementById("txtPais").value;
    dir = document.getElementById("txtDirec").value;
    barr = document.getElementById("txtBarrio").value;
    tecel = document.getElementById("txtTelCelula").value;
    tefij = document.getElementById("txtTelFijo").value;
    facul = document.getElementById("txtFacult").value;
    perlab = document.getElementById("txtPerfLabo").value;    
    nomemp = document.getElementById("txtNomEmp").value;    
    jefinm = document.getElementById("txtJefeInm").value;    
    carg = document.getElementById("txtCarg").value;    
    tipocontra = document.getElementById("txtTipoCont").value;    
    fechent = document.getElementById("txtFechEnt").value;    
    fechsal = document.getElementById("txtFechSal").value;   
    nomins = document.getElementById("txtNomIns").value;   
    fechini = document.getElementById("txtFechIni").value;   
    fechfin = document.getElementById("txtFechFin").value;
    nominst = document.getElementById("txtNomInst").value;   
    fechinici = document.getElementById("txtFechInic").value;   
    fechfinali = document.getElementById("txtFechFinal").value;
    nominst1 = document.getElementById("txtNomInst1").value;   
    fechinici2 = document.getElementById("txtFechInic2").value;   
    fechfinali3 = document.getElementById("txtFechFinal3").value;
    nomrefer = document.getElementById("txtNoRef").value;
    ocupac = document.getElementById("txtOcup").value;
    dir1 = document.getElementById("txtDirec1").value;
    telcontact = document.getElementById("txtTelConta").value;
    
    if(nom === ""){
        alertify.alert("Error", "El campo nombre esta vacio").set('label', 'ok');
        return false;
    }
    else if(apell === ""){
        alertify.alert("Error", "El campo apellidos esta vacio").set('label', 'ok');
        return false;
    }
    else if (numd === ""){
        alertify.alert("Error", "El campo numero de documento esta vacio").set('label', 'ok');
        return false;
    }
    else if (fechna === ""){
        alertify.alert("Error", "El campo fecha de nacimiento esta vacio").set('label', 'ok');
        return false;
    }
    else if (lugna === ""){
        alertify.alert("Error", "El campo lugar de nacimiento esta vacio").set('label', 'ok');
        return false;
    }
    else if (pai === ""){
        alertify.alert("Error", "El campo país esta vacio").set('label', 'ok');
        return false;
    }
    else if (dir === ""){
        alertify.alert("Error", "El campo dirección esta vacio").set('label', 'ok');
        return false;
    }
    else if (barr === ""){
        alertify.alert("Error", "El campo barrio esta vacio").set('label', 'ok');
        return false;
    }    
    else if (tecel === ""){
        alertify.alert("Error", "El campo teléfono celular esta vacio").set('label', 'ok');
        return false;
    }
    else if (tefij === ""){
        alertify.alert("Error", "El campo teléfono fijo esta vacio").set('label', 'ok');
        return false;
    }
    else if (facul === ""){
        alertify.alert("Error", "El campo facultad esta vacio").set('label', 'ok');
        return false;
    }
    else if (perlab === ""){
        alertify.alert("Error", "El campo perfil laboral esta vacio").set('label', 'ok');
        return false;
    }   
    else if (nomemp === ""){
        alertify.alert("Error", "El campo nombre empresa esta vacio").set('label', 'ok');
        return false;
    }   
    else if (jefinm === ""){
        alertify.alert("Error", "El campo jefe inmediato esta vacio").set('label', 'ok');
        return false;
    }   
    else if (carg === ""){
        alertify.alert("Error", "El campo cargo esta vacio").set('label', 'ok');
        return false;
    }   
    else if (tipocontra === ""){
        alertify.alert("Error", "El campo tipo contrato esta vacio").set('label', 'ok');
        return false;
    }   
    else if (fechent === ""){
        alertify.alert("Error", "El campo fecha entrada esta vacio").set('label', 'ok');
        return false;
    }   
    else if (fechsal === ""){
        alertify.alert("Error", "El campo fecha salida esta vacio").set('label', 'ok');
        return false;
    }   
    else if (nomins === ""){
        alertify.alert("Error", "El campo nombre institución esta vacio").set('label', 'ok');
        return false;
    }   
    else if (fechini === ""){
        alertify.alert("Error", "El campo fecha inicial esta vacio").set('label', 'ok');
        return false;
    }   
    else if (fechfin === ""){
        alertify.alert("Error", "El campo fecha finalización esta vacio").set('label', 'ok');
        return false;
    }   
    else if (nominst1 === ""){
        alertify.alert("Error", "El campo nombre institución esta vacio").set('label', 'ok');
        return false;
    }   
    else if (fechinici2 === ""){
        alert("Error", "El campo fecha inicial esta vacio").set('label', 'ok');
        return false;
    }   
    else if (fechfinali3 === ""){
        alertify.alert("Error", "El campo fecha finalización esta vacio").set('label', 'ok');
        return false;
    }   
    
    else if (nomrefer === ""){
        alertify.alert("Error", "El campo nombre referencia esta vacio").set('label', 'ok');
        return false;
    }   
    else if (ocupac === ""){
        alertify.alert("Error", "El campo ocupación esta vacio").set('label', 'ok');
        return false;
    }   
    else if (dir1 === ""){
        alertify.alert("Error", "El campo dirección referencia esta vacio").set('label', 'ok');
        return false;
    }   
    else if (telcontact === ""){
        alertify.alert("Error", "El campo teléfono de contacto esta vacio").set('label', 'ok');
        return false;
    }   
}