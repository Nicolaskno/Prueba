

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer"%>
<%@page import="javax.servlet.ServletResponse"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Conexion-->
        <%
        Connection con = null;
        try {
              Class.forName("com.mysql.jdbc.Driver");
              con = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/jobopportunities1","root","");
            } catch (Exception e) {
            }
        %>
        
        <!--pdf-->
        <%
          File reportfile = new File (application.getRealPath("reporteAD1.jasper"));
          
          Map<String, Object> parameter = new HashMap<String,Object>();
          
          String valor = request.getParameter("txtparametro");
          parameter.put("cor",new String(valor));
          
          byte[] bytes = JasperRunManager.runReportToPdf(reportfile.getPath(), parameter, con);
          
          response.setContentType("application/pdf");
          response.setContentLength(bytes.length);
          ServletOutputStream outputstream = response.getOutputStream();
          outputstream.write(bytes,0,bytes.length);
          
          outputstream.flush();
          outputstream.close();
        %>
    </body>
</html>
