
package Interfaces;

import Modelo.Empresa;
import java.util.List;


public interface CrudEm {
    public List listar();
    public Empresa list(int id);
    public boolean add(Empresa em);
    public boolean adit(Empresa em);
    public boolean eliminar(int id);
}
