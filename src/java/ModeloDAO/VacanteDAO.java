/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config1.Conexion;
import Interfaces.CrudVa;
import Modelo.Vacante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nicolas
 */
public class VacanteDAO implements CrudVa{
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Vacante va=new Vacante();
    
    @Override
    public List listar() {
        ArrayList<Vacante>list=new ArrayList<>();
        String sql="select * from vacante";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Vacante va=new Vacante();
                va.setId_vacante(rs.getInt("id_vacante"));
                va.setNombre_Empresa(rs.getString("Nombre_Empresa"));
                va.setEspecialidad_Requerida(rs.getString("Especialidad_Requerida"));
                va.setCiudad(rs.getString("Ciudad"));
                va.setPerfil_Aspirante(rs.getString("Perfil_Aspirante"));
                va.setFunciones(rs.getString("Funciones"));
                va.setVacantes_Disponibles(rs.getString("Vacantes_Disponibles"));
                list.add(va);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Vacante list(int id_vacante) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Vacante va) {
        String sql="insert into vacante(Nombre_Empresa, Especialidad_Requerida, Ciudad, Perfil_Aspirante, Funciones, Vacantes_Disponibles)values('"+va.getNombre_Empresa()+"','"+va.getEspecialidad_Requerida()+"','"+va.getCiudad()+"','"+va.getPerfil_Aspirante()+"','"+va.getFunciones()+"','"+va.getVacantes_Disponibles()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Vacante va) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id_vacante) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
