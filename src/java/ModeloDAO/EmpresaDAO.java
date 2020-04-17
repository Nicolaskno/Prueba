
package ModeloDAO;

import Config1.Conexion;
import Interfaces.CrudEm;
import Modelo.Empresa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpresaDAO implements CrudEm {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Empresa em=new Empresa();
    
    
    @Override
    public List listar() {
        ArrayList<Empresa>list=new ArrayList<>();
        String sql="select * from empresa";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Empresa em=new Empresa();
                em.setId(rs.getInt("idEmpresa"));
                em.setNit(rs.getString("NIT"));
                em.setRazon_social(rs.getString("RazonSocial"));
                em.setRepresentante_legal(rs.getString("RepresentanteLegal"));
                em.setUsuario(rs.getString("Correo"));
                list.add(em);
            }
        } catch (Exception e) {
        }
        return list;
    }

    
    @Override
    public Empresa list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Empresa em) {
       String sql="insert into empresa(NIT, RazonSocial, RepresentanteLegal, Correo, Clave)values('"+em.getNit()+"','"+em.getRazon_social()+"','"+em.getRepresentante_legal()+"','"+em.getUsuario()+"','"+em.getClave()+"')";  
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
       return false;
    }

    @Override
    public boolean adit(Empresa em) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from empresa where idEmpresa="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }


    
}
