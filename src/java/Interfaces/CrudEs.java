
package Interfaces;

import Modelo.Estudiante;
import java.util.List;

public interface CrudEs {
    public List listar();
    public Estudiante list(int id);
    public boolean add(Estudiante es);
    public boolean edit(Estudiante es);
    public boolean eliminar(int id);
}
