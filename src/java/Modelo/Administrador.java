
package Modelo;

public class Administrador {
    private int id_administrador;
    private String Documento;
    private String Nombres;
    private String Apellidos;
    private String Usuario;
    private String Clave;

    public Administrador() {
    }

    public Administrador(int id_administrador, String Documento, String Nombres, String Apellidos, String Usuario, String Clave) {
        this.id_administrador = id_administrador;
        this.Documento = Documento;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.Usuario = Usuario;
        this.Clave = Clave;
    }

    

    public int getId_administrador() {
        return id_administrador;
    }

    public void setId_administrador(int id_administrador) {
        this.id_administrador = id_administrador;
    }

    public String getDocumento() {
        return Documento;
    }

    public void setDocumento(String Documento) {
        this.Documento = Documento;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }
    
    public String getClave() {
        return Clave;
    }
    
    public void setClave(String Clave) {
        this.Clave = Clave;
    }
}
