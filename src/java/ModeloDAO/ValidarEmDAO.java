
package ModeloDAO;
import java.sql.*;
import java.util.ArrayList;
import Modelo.EmVA;

public class ValidarEmDAO {
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
    
    
    public EmVA comprobarLogin(String usu, String pas){
        EmVA a=null;
        try{
           conectar();
           sentencia = con.createStatement();
           String consulta = "select * from empresa where Correo='"+usu+"' and Clave='"+pas+"'";
           rs = sentencia.executeQuery(consulta);
           if(rs.next()){
               a = new EmVA(rs.getInt("idEmpresa"),usu,pas);
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
