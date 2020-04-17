
package Modelo;

public class Empresa {
    int id;
    String nit;
    String razon_social;
    String representante_legal;
    String usuario;
    String clave;

    public Empresa() {
    }

    public Empresa(int id, String nit, String razon_social, String representante_legal, String usuario, String clave) {
        this.id = id;
        this.nit = nit;
        this.razon_social = razon_social;
        this.representante_legal = representante_legal;
        this.usuario = usuario;
        this.clave = clave;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getRazon_social() {
        return razon_social;
    }

    public void setRazon_social(String razon_social) {
        this.razon_social = razon_social;
    }

    public String getRepresentante_legal() {
        return representante_legal;
    }

    public void setRepresentante_legal(String representante_legal) {
        this.representante_legal = representante_legal;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
    public String getClave() {
        return clave;
    }

    public void setClave (String clave) {
        this.clave = clave;
    }
}
