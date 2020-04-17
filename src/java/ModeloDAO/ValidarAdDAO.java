
package ModeloDAO;
import java.sql.*;
import java.util.ArrayList;
import Modelo.AdVA;
import Modelo.Administrador;

public class ValidarAdDAO {
    private Connection con=null;
    private ResultSet rs=null;
    private Statement sentencia=null;
    
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
    
    
    public AdVA comprobarLogin(String usu, String pas){
        AdVA a=null;
        try{
           conectar();
           sentencia = con.createStatement();
           String consulta = "select * from administrador where Correo='"+usu+"' and Clave='"+pas+"'";
           rs = sentencia.executeQuery(consulta);
           if(rs.next()){
               a = new AdVA(rs.getInt("id_administrador"),usu,pas);
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
        return a;
    }
   
}// Cierra la claase DAO.
