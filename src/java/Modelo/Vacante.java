
package Modelo;

public class Vacante {
    
    int id_vacante;
    String Nombre_Empresa;
    String Especialidad_Requerida;
    String Ciudad;
    String Perfil_Aspirante;
    String Funciones;
    String Vacantes_Disponibles;

    public Vacante() {
    }

    public Vacante(int id_vacante, String Nombre_Empresa, String Especialidad_Requerida, String Ciudad, String Perfil_Aspirante, String Funciones, String Vacantes_Disponibles) {
        this.id_vacante = id_vacante;
        this.Nombre_Empresa = Nombre_Empresa;
        this.Especialidad_Requerida = Especialidad_Requerida;
        this.Ciudad = Ciudad;
        this.Perfil_Aspirante = Perfil_Aspirante;
        this.Funciones = Funciones;
        this.Vacantes_Disponibles = Vacantes_Disponibles;
    }

    public int getId_vacante() {
        return id_vacante;
    }

    public void setId_vacante(int id_vacante) {
        this.id_vacante = id_vacante;
    }

    public String getNombre_Empresa() {
        return Nombre_Empresa;
    }

    public void setNombre_Empresa(String Nombre_Empresa) {
        this.Nombre_Empresa = Nombre_Empresa;
    }

    public String getEspecialidad_Requerida() {
        return Especialidad_Requerida;
    }

    public void setEspecialidad_Requerida(String Especialidad_Requerida) {
        this.Especialidad_Requerida = Especialidad_Requerida;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public String getPerfil_Aspirante() {
        return Perfil_Aspirante;
    }

    public void setPerfil_Aspirante(String Perfil_Aspirante) {
        this.Perfil_Aspirante = Perfil_Aspirante;
    }

    public String getFunciones() {
        return Funciones;
    }

    public void setFunciones(String Funciones) {
        this.Funciones = Funciones;
    }

    public String getVacantes_Disponibles() {
        return Vacantes_Disponibles;
    }

    public void setVacantes_Disponibles(String Vacantes_Disponibles) {
        this.Vacantes_Disponibles = Vacantes_Disponibles;
    }
    
    
}
