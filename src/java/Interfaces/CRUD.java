
package Interfaces;

import Modelo.EstudianteP;
import java.util.List;


public interface CRUD {
    public List listar();
    public EstudianteP list(int id);
    public boolean add(EstudianteP est);
    public boolean addtido(EstudianteP est);    
    public boolean addpais(EstudianteP est);    
    public boolean adddepar(EstudianteP est);    
    public boolean addlocal(EstudianteP est);    
    public boolean addestci(EstudianteP est);    
    public boolean addnomemp(EstudianteP est);    
    public boolean addcarg(EstudianteP est);    
    public boolean addtipocontra(EstudianteP est);    
    public boolean addestbas(EstudianteP est);
    public boolean addestbasba(EstudianteP est);    
    public boolean addestbas1(EstudianteP est);    
    public boolean addestsup(EstudianteP est);    
    public boolean addestsup1(EstudianteP est);    
    public boolean addrefper(EstudianteP est);    
    public boolean editar(EstudianteP est);
    public boolean eliminar(int id);
}
