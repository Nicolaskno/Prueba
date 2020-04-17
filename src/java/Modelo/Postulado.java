
package Modelo;

public class Postulado {
    
    int id_pos;
    String Nombre_completo;
    String Correo;
    String Celular;

    public Postulado() {
    }

    public Postulado(int id_pos, String Nombre_completo, String Correo, String Celular) {
        this.id_pos = id_pos;
        this.Nombre_completo = Nombre_completo;
        this.Correo = Correo;
        this.Celular = Celular;
    }

    public int getId_pos() {
        return id_pos;
    }

    public void setId_pos(int id_pos) {
        this.id_pos = id_pos;
    }

    public String getNombre_completo() {
        return Nombre_completo;
    }

    public void setNombre_completo(String Nombre_completo) {
        this.Nombre_completo = Nombre_completo;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getCelular() {
        return Celular;
    }

    public void setCelular(String Celular) {
        this.Celular = Celular;
    }
    
    
}
