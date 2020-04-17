
package Controlador;

import Modelo.Empresa;
import ModeloDAO.EmpresaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorEmpresa extends HttpServlet {

    String listar="Empresa1.jsp";
    String add="registrarEm.jsp";
    String ingresar="loginEm.jsp";
    Empresa em=new Empresa();
    EmpresaDAO dao=new EmpresaDAO();
    int id;
    int r;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorEmpresa</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorEmpresa at " + request.getContextPath() + "</h1>");
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
        }else if(action.equalsIgnoreCase("Agregar")){
            String nit=request.getParameter("txtNit");
            String razon_social=request.getParameter("txtRaz");
            String representante_legal=request.getParameter("txtRep");
            String usuario=request.getParameter("txtUsuario");
            String clave=request.getParameter("txtClave");
            em.setNit(nit);
            em.setRazon_social(razon_social);
            em.setRepresentante_legal(representante_legal);
            em.setUsuario(usuario);
            em.setClave(clave);
            dao.add(em);
            acceso=ingresar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            em.setId(id);
            dao.eliminar(id);
            acceso=listar;
        }
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
