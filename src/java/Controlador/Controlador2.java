package Controlador;

import Modelo.EstudianteP;
import ModeloDAO.EstudiantePDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador2 extends HttpServlet {

    String listar = "inicio4.jsp";
    String add = "agregares.jsp";
    String editar = "Vistas/editar.jsp";
    EstudianteP es = new EstudianteP();
    EstudiantePDAO dao = new EstudiantePDAO();
    

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Enviar")) {
            String Nombres = request.getParameter("txtNom");
            String Apellidos = request.getParameter("txtApell");
            String TipoDoc = request.getParameter("txtTiDoc");
            String NumDoc = request.getParameter("txtNumDoc");
            String FechNac = request.getParameter("txtFechNa");                      
            String LugNac = request.getParameter("txtLugNac");
            String Depart = request.getParameter("txtDepa");
            String Pais = request.getParameter("txtPai");
            String EstCiv = request.getParameter("txtEstaCivi");
            String Direccion = request.getParameter("txtDir");
            String TelCel = request.getParameter("txtTelCel");
            String TelFij = request.getParameter("txtTelFij");
            String PerLab = request.getParameter("txtPerLab");
            String Sexo = request.getParameter("txtSexo");
            String Barrio = request.getParameter("txtBarr");
            String Localidad = request.getParameter("txtLocalid");
            String Facultad = request.getParameter("txtFacu");
            String NomEmp = request.getParameter("txtNombEmpre");
            String JefInm = request.getParameter("txtJefeInmedi");
            String Carg = request.getParameter("txtCargo");
            String TipoContra = request.getParameter("txtTiContra");
            String FechEnt = request.getParameter("txtFechaEntr");
            String FechSal = request.getParameter("txtFechaSalid");
            String NomIns = request.getParameter("txtNomInsti");
            String FechIni = request.getParameter("txtFechInici");
            String FechFin = request.getParameter("txtFechaFinal");
            String NomInsti = request.getParameter("txtNomInstitu");
            String FechInici = request.getParameter("txtFechInicio");
            String FechFinali = request.getParameter("txtFechaFinaliza");
            String NoInsti = request.getParameter("txtNoInsti");
            String TiOb = request.getParameter("txtTiOb");
            String Feinicial = request.getParameter("txtFeInicial");
            String FechaFinalizac = request.getParameter("txtFechaFinalizac");
            String NIntitu = request.getParameter("txtNInstitu");
            String TObtenido = request.getParameter("txtTObtenido");
            String FInicio = request.getParameter("txtFInicio");
            String FFina = request.getParameter("txtFFina");
            String NomRefer = request.getParameter("txtNomRefer");
            String Ocupac = request.getParameter("txtOcupac");
            String Dri1 = request.getParameter("txtDir1");
            String TelContact = request.getParameter("txtTelContact");
            String NomRefer1 = request.getParameter("txtNomRefer1");
            String Ocupac1 = request.getParameter("txtOcupac1");
            String Dri11 = request.getParameter("txtDir11");
            String TelContact1 = request.getParameter("txtTelContact1");
            es.setNombres(Nombres);
            es.setApellidos(Apellidos);
            es.setTipoDoc(TipoDoc);
            es.setNumDoc(NumDoc);
            es.setFechNac(FechNac);
            es.setLugNac(LugNac);
            es.setPais(Pais);
            es.setDepart(Depart);
            es.setEstCiv(EstCiv);
            es.setDireccion(Direccion);
            es.setBarrio(Barrio);
            es.setLocal(Localidad);
            es.setTelCel(TelCel);
            es.setTelFijo(TelFij);
            es.setSexo(Sexo);            
            es.setFacultad(Facultad);
            es.setPerLab(PerLab);            
            es.setNomEmp(NomEmp);            
            es.setJefInm(JefInm);            
            es.setCarg(Carg);            
            es.setTipoContra(TipoContra);            
            es.setFechEnt(FechEnt);            
            es.setFechSal(FechSal);            
            es.setNomIns(NomIns);            
            es.setFechIni(FechIni);            
            es.setFechFin(FechFin);            
            es.setNomInsti(NomInsti);            
            es.setFechInici(FechInici);            
            es.setFechFinali(FechFinali);            
            es.setNoInsti(NoInsti);            
            es.setTiOb(TiOb);            
            es.setFeInicial(Feinicial);            
            es.setFechaFinalizac(FechaFinalizac);            
            es.setNInstitu(NIntitu);            
            es.setTObtenido(TObtenido);            
            es.setFInicio(FInicio);            
            es.setFFina(FFina);
            es.setNomRefer(NomRefer);
            es.setOcupac(Ocupac);
            es.setDri1(Dri1);
            es.setTelContact(TelContact);
            es.setNomRefer1(NomRefer1);
            es.setOcupac1(Ocupac1);
            es.setDril1(Dri11);
            es.setTelContact1(TelContact1);
            dao.add(es);
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
