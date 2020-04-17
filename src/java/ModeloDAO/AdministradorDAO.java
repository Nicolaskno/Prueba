
package ModeloDAO;

import Config1.Conexion;
import Interfaces.CrudAd;
import Modelo.Administrador;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdministradorDAO implements CrudAd{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Administrador a=new Administrador();
   
    @Override
    public List listar() {
        ArrayList<Administrador>list=new ArrayList<>();
        String sql="select * from administrador";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Administrador a=new Administrador();
                a.setId_administrador(rs.getInt("id_administrador"));
                a.setDocumento(rs.getString("Documento"));
                a.setNombres(rs.getString("Nombres"));
                a.setApellidos(rs.getString("Apellidos"));
                a.setUsuario(rs.getString("Correo"));
                list.add(a);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    

    @Override
    public Administrador list(int id_administrador) {
        String sql="select * from administrador where id_administrador"+id_administrador;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                a.setId_administrador(rs.getInt("id_administrador"));
                a.setDocumento(rs.getString("Documento"));
                a.setNombres(rs.getString("Nombres"));
                a.setApellidos(rs.getString("Apellidos"));
                a.setUsuario(rs.getString("Correo"));
            }
        } catch (Exception e) {
        }
        return a;
    }

    @Override
    public boolean add(Administrador ad) {
      String sql="insert into administrador(Documento, Nombres, Apellidos, Correo, Clave)values('"+ad.getDocumento()+"','"+ad.getNombres()+"','"+ad.getApellidos()+"','"+ad.getUsuario()+"','"+ad.getClave()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
      return false;
    }

    @Override
    public boolean edit(Administrador ads) {
        String sql="UPDATE `administrador` SET Documento='"+ads.getDocumento()+"',Nombres='"+ads.getNombres()+"',Apellidos='"+ads.getApellidos()+"',Correo='"+ads.getUsuario()+"',Clave='"+ads.getClave()+"' where id_administrador="+ads.getId_administrador();  
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from administrador where id_administrador="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    

    
}