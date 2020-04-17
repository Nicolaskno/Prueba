
package Interfaces;

import Modelo.Administrador;
import java.util.List;


public interface CrudAd {
    public List listar();
    public Administrador list(int id);
    public boolean add(Administrador ad);
    public boolean edit(Administrador ad);
    public boolean eliminar(int id);
}
