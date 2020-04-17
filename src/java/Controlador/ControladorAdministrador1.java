
package Controlador;

import Modelo.Administrador;
import ModeloDAO.AdministradorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorAdministrador1 extends HttpServlet {
    String listar="Administrador1.jsp";
    String edit="edit.jsp";
    Administrador a=new Administrador();
    AdministradorDAO dao=new AdministradorDAO();
    int id_administrador;
    int r;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorAdministrador1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorAdministrador1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            String doc=request.getParameter("txtDocumento");
            String nom=request.getParameter("txtNombres");
            String ape=request.getParameter("txtApellidos");
            String usuario=request.getParameter("txtUsuario");
            String clave=request.getParameter("txtClave");
            a.setDocumento(doc);
            a.setNombres(nom);
            a.setApellidos(ape);
            a.setUsuario(usuario);
            a.setClave(clave);
            dao.add(a);
            acceso=listar;
        }
        
        else if(action.equalsIgnoreCase("eliminar")){
            id_administrador=Integer.parseInt(request.getParameter("id_administrador"));
            a.setId_administrador(id_administrador);
            dao.eliminar(id_administrador);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idAdmin",request.getParameter("id_administrador"));
            acceso=edit;  

         }
         else if (action.equalsIgnoreCase("actualizar")){
            id_administrador=Integer.parseInt(request.getParameter("txtid_administrador"));
            String doc = request.getParameter("txtDocumento");
            String nom = request.getParameter("txtNombres");
            String ape= request.getParameter("txtApellidos");
            String correo=request.getParameter("txtCorreo");
            String clave=request.getParameter("txtClave");
            a.setId_administrador(id_administrador);
            a.setDocumento(doc);
            a.setNombres(nom);
            a.setApellidos(ape);
            a.setUsuario(correo);
            a.setClave(clave);
            dao.edit(a);
            acceso= listar;         
         }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
