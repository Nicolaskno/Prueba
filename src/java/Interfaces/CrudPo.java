
package Interfaces;

import Modelo.Postulado;
import java.util.List;


public interface CrudPo {
    public List listar();
    public Postulado list(int id_pos);
    public boolean add(Postulado va);
    public boolean edit(Postulado va);
    public boolean eliminar(int id_pos);
}
