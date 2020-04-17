
package Controlador;

import Modelo.Vacante;
import ModeloDAO.VacanteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControladorVacante extends HttpServlet {

    String listar="inicioEM.jsp";
    String add="";
    String editar="";
    Vacante va=new Vacante();
    VacanteDAO dao=new VacanteDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorVacante</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorVacante at " + request.getContextPath() + "</h1>");
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
            String Nombre_Empresa=request.getParameter("txtNombreEmpresa");
            String Especialidad_Requerida=request.getParameter("txtEspecialidad");
            String Ciudad=request.getParameter("txtCiudad");
            String Perfil_Aspirante=request.getParameter("txtPerfil");
            String Funciones=request.getParameter("txtFunciones");
            String Vacantes_Disponibles=request.getParameter("txtVacantes");
            
            va.setNombre_Empresa(Nombre_Empresa);
            va.setEspecialidad_Requerida(Especialidad_Requerida);
            va.setCiudad(Ciudad);
            va.setPerfil_Aspirante(Perfil_Aspirante);
            va.setFunciones(Funciones);
            va.setVacantes_Disponibles(Vacantes_Disponibles);
            dao.add(va);
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
