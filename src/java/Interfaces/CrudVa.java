
package Interfaces;

import Modelo.Vacante;
import java.util.List;


public interface CrudVa {
    public List listar();
    public Vacante list(int id_vacante);
    public boolean add(Vacante va);
    public boolean edit(Vacante va);
    public boolean eliminar(int id_vacante);
}
