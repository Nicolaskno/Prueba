
package ModeloDAO;

import Config1.Conexion;
import Interfaces.CrudEs;
import Modelo.Estudiante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EstudianteDAO implements CrudEs{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Estudiante es=new Estudiante();
    
    @Override
    public List listar() {
        ArrayList<Estudiante>list=new ArrayList<>();
        String sql="select * from usuario_es";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Estudiante es=new Estudiante();
                es.setId(rs.getInt("id_usuario"));
                es.setNombres(rs.getString("nombres"));
                es.setApellidos(rs.getString("apellidos"));
                es.setUsuario(rs.getString("Correo"));
                list.add(es);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Estudiante list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Estudiante es) {
        String sql="insert into usuario_es(nombres, apellidos, correo, clave)values('"+es.getNombres()+"','"+es.getApellidos()+"','"+es.getUsuario()+"','"+es.getClave()+"')";  
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean edit(Estudiante es) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from usuario_es where id_usuario="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
   
}
