
package ModeloDAO;

import Config1.Conexion;
import Interfaces.CrudPo;
import Modelo.Postulado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class PostuladoDAO implements CrudPo{

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Postulado po=new Postulado();
    
    @Override
    public List listar() {
        ArrayList<Postulado>list=new ArrayList<>();
        String sql="select * from postulados";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Postulado po=new Postulado();
                po.setId_pos(rs.getInt("Id_pos"));
                po.setNombre_completo(rs.getString("Nombre_completo"));
                po.setCorreo(rs.getString("Correo"));
                po.setCelular(rs.getString("Celular"));
                list.add(po);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Postulado list(int id_po) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Postulado po) {
        String sql="insert into postulados(Nombre_completo, Correo, Celular)values('"+po.getNombre_completo()+"','"+po.getCorreo()+"','"+po.getCelular()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Postulado po) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id_po) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
