
package ModeloDAO;
import Config1.Conexion;
import java.sql.*;
import java.util.ArrayList;
import Modelo.EsVA;

public class ValidarEsDAO{
  private Connection con=null;
    private ResultSet rs=null;
    private Statement sentencia=null;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    
    private void conectar(){
        try{
            String parametros = "com.mysql.jdbc.Driver";
            Class.forName(parametros);
            String url = "jdbc:mysql://localhost:3306/jobopportunities1";
            con = DriverManager.getConnection(url,"root","");
        }catch(SQLException e1){
            System.out.println(e1.getMessage());
            System.exit(0);
        }catch(Exception e2){
            System.out.println(e2.getMessage());
            System.exit(0);
        }
    }
    

    private void desconectar(){
        try{
            con.close();
        }catch(SQLException e1){
            System.out.println(e1.getMessage());
            System.exit(0);
        }catch(Exception e2){
            System.out.println(e2.getMessage());
            System.exit(0);
        }
    }
    
    
    public EsVA comprobarLogin(String usu, String pas){
        EsVA es=null;
        try{
           conectar();
           sentencia = con.createStatement();
           String consulta = "select * from usuario_es where Correo='"+usu+"' and Clave='"+pas+"'";
           rs = sentencia.executeQuery(consulta);
           if(rs.next()){
               es = new EsVA(rs.getInt("id_usuario"),usu,pas);
           }
           sentencia.close();
           desconectar();
        }catch(SQLException e1){
            System.out.println(e1.getMessage());
            System.exit(0);
        }catch(Exception e2){
            System.out.println(e2.getMessage());
            System.exit(0);
        }
        return es;
    }

}// Cierra la claase DAO.
