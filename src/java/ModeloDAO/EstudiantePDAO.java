package ModeloDAO;

import Config1.Conexion;
import Interfaces.CRUD;
import Modelo.EstudianteP;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EstudiantePDAO implements CRUD {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    EstudianteP es = new EstudianteP();

    @Override
    public List listar() {
        ArrayList<EstudianteP> list = new ArrayList<>();
        String sql = "select * from estudiante";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                EstudianteP est = new EstudianteP();
                est.setId(rs.getInt("id_estudiante"));
                est.setNombres(rs.getString("Nombres"));
                est.setApellidos(rs.getString("Apellidos"));
                est.setNumDoc(rs.getString("Numero_documento"));
                est.setFechNac(rs.getString("Fecha_de_nacimiento"));
                est.setLugNac(rs.getString("Lugar_de_nacimiento"));
                est.setDireccion(rs.getString("Direccion"));
                est.setTelCel(rs.getString("Telefono_celular"));
                est.setTelFijo(rs.getString("Telefono_fijo"));
                est.setPerLab(rs.getString("Perfil_laboral"));
                est.setSexo(rs.getString("Sexo"));
                est.setBarrio(rs.getString("Barrio"));
                est.setFacultad(rs.getString("facultad"));
                list.add(est);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public EstudianteP list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(EstudianteP es) {
        String sql = "insert into hojadevida (Nombres, Apellidos, Documento, Numero_documento, Fecha_de_nacimiento, Lugar_de_nacimiento, NombreDepartamento, nombre_pais, nombreEstadoCivil, Direccion, Telefono_celular, Telefono_fijo, Perfil_laboral, Sexo, Barrio, Nombre_localidad, facultad, nombreEmpresa, jefeInmediato, nombreCargo, nombre_contrato, fechaEntrada, fechaSalida, NombreColegio, AnoInicioBas, AnoFinalizacionBas, NombreColegio1, AnoInicioBas1, AnoFinalizacionBas1, NombreInstitucion, TituloObtenido_sup, AnoInicioSup, AnoFinalizacionSup, NombreInstitucion1, TituloObtenido_sup1, AnoInicioSup1, AnoFinalizacionSup1, NombresRef, Ocupacion, Direccion_ref, Telefono, NombresRef1, Ocupacion1, Direccion_ref1, Telefono1) values('"+es.getNombres()+"','"+es.getApellidos()+"','"+es.getTipoDoc()+"','"+es.getNumDoc()+"','"+es.getFechNac()+"','"+es.getLugNac()+"','"+es.getDepart()+"','"+es.getPais()+"','"+es.getEstCiv()+"','"+es.getDireccion()+"','"+es.getTelCel()+"','"+es.getTelFijo()+"','"+es.getPerLab()+"','"+es.getSexo()+"','"+es.getBarrio()+"','"+es.getLocal()+"','"+es.getFacultad()+"','"+es.getNomEmp()+"','"+es.getJefInm()+"','"+es.getCarg()+"','"+es.getTipoContra()+"','"+es.getFechEnt()+"','"+es.getFechSal()+"','"+es.getNomIns()+"','"+es.getFechIni()+"','"+es.getFechFin()+"','"+es.getNoInsti()+"','"+es.getFechInici()+"','"+es.getFechFinali()+"','"+es.getNoInsti()+"','"+es.getTiOb()+"','"+es.getFeInicial()+"','"+es.getFechaFinalizac()+"','"+es.getNInstitu()+"','"+es.getTObtenido()+"','"+es.getFInicio()+"','"+es.getFFina()+"','"+es.getNomRefer()+"','"+es.getOcupac()+"','"+es.getDri1()+"','"+es.getTelContact()+"','"+es.getNomRefer1()+"','"+es.getOcupac1()+"','"+es.getDril1()+"','"+es.getTelContact1()+"')";                                                                   
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    

    @Override
    public boolean editar(EstudianteP est) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean addtido(EstudianteP est) {
        String sql = "insert into tipo_documento (Documento) values('"+est.getTipoDoc()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addpais(EstudianteP est) {
       String sql = "insert into pais (nombre_pais) values('"+est.getPais()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false; 
    }

    @Override
    public boolean adddepar(EstudianteP est) {
        String sql = "insert into departamento (NombreDepartamento) values('"+est.getDepart()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addlocal(EstudianteP est) {
        String sql = "insert into localidad (Nombre_localidad) values('"+est.getLocal()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addestci(EstudianteP est) {
        String sql = "insert into estadocivil (NombreEstadoCivil) values('"+est.getEstCiv()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addnomemp(EstudianteP est) {
        String sql = "insert into experiencialaboral (NombreEmpresa, jefeInmediato, fechaEntrada, fechaSalida) values('"+est.getNomEmp()+"','"+est.getJefInm()+"','"+est.getFechEnt()+"','"+est.getFechSal()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addcarg(EstudianteP est) {
        String sql = "insert into cargo (nombreCargo) values('"+est.getCarg()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addtipocontra(EstudianteP est) {
        String sql = "insert into tipo_contrato (nombre_contrato) values('"+est.getTipoContra()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addestbas(EstudianteP est) {
        String sql = "insert into estudiosbasicos (NombreColegio, AnoInicioBas, AnoFinalizacionBas) values('"+est.getNomIns()+"','"+est.getFechIni()+"','"+est.getFechFin()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
    @Override
    public boolean addestbasba(EstudianteP est) {
        String sql = "insert into estudiosbasicosbach (NombreColegio, AnoInicioBas, AnoFinalizacionBas) values('"+est.getNomIns()+"','"+est.getFechIni()+"','"+est.getFechFin()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addestbas1(EstudianteP est) {
        String sql = "insert into estudiosbasicos (NombreColegio, TituloObtenidoBas, AnoInicioBas, AnoFinalizacionBas) values('"+est.getNomInsti()+"','"+est.getTituObten()+"','"+est.getFechInici()+"','"+est.getFechFinali()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addestsup(EstudianteP est) {
        String sql = "insert into estudiossuperiores (NombreInstitucion, TituloObtenido_sup, AnoInicioSup, AnoFinalizacionSup) values('"+est.getNoInsti()+"','"+est.getTiOb()+"','"+est.getFeInicial()+"','"+est.getFechaFinalizac()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addestsup1(EstudianteP est) {
        String sql = "insert into estudiossuperiores (NombreInstitucion, TituloObtenido_sup, AnoInicioSup, AnoFinalizacionSup) values('"+est.getNInstitu()+"','"+est.getTObtenido()+"','"+est.getFInicio()+"','"+est.getFFina()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean addrefper(EstudianteP est) {
        String sql = "insert into referencias_personales (Nombres, Ocupacion, Direccion_ref, Telefono) values('"+est.getNomRefer()+"','"+est.getOcupac()+"','"+est.getDri1()+"','"+est.getTelContact()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
