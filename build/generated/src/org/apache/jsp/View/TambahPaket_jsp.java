package org.apache.jsp.View;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Model.C_Spot;
import Model.C_Paket;
import Model.spotWisata;
import Model.paketwisata;

public final class TambahPaket_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <SCRIPT language=\"javascript\">\n");
      out.write("            function addRow(tableID) {\n");
      out.write("\n");
      out.write("                var table = document.getElementById(tableID);\n");
      out.write("\n");
      out.write("                var rowCount = table.rows.length;\n");
      out.write("                var row = table.insertRow(rowCount);\n");
      out.write("\n");
      out.write("                var colCount = table.rows[0].cells.length;\n");
      out.write("\n");
      out.write("                for (var i = 0; i < colCount; i++) {\n");
      out.write("\n");
      out.write("                    var newcell = row.insertCell(i);\n");
      out.write("\n");
      out.write("                    newcell.innerHTML = table.rows[0].cells[i].innerHTML;\n");
      out.write("                    //alert(newcell.childNodes);\n");
      out.write("                    switch (newcell.childNodes[0].type) {\n");
      out.write("                        case \"select-one\":\n");
      out.write("                            newcell.childNodes[0].selectedIndex = 0;\n");
      out.write("                            break;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function deleteRow(tableID) {\n");
      out.write("                try {\n");
      out.write("                    var table = document.getElementById(tableID);\n");
      out.write("                    var rowCount = table.rows.length;\n");
      out.write("\n");
      out.write("                    for (var i = 0; i < rowCount; i++) {\n");
      out.write("                        var row = table.rows[i];\n");
      out.write("                        var chkbox = row.cells[0].childNodes[0];\n");
      out.write("                        if (null != chkbox && true == chkbox.checked) {\n");
      out.write("                            if (rowCount <= 1) {\n");
      out.write("                                alert(\"Cannot delete all the rows.\");\n");
      out.write("                                break;\n");
      out.write("                            }\n");
      out.write("                            table.deleteRow(i);\n");
      out.write("                            rowCount--;\n");
      out.write("                            i--;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("\n");
      out.write("                    }\n");
      out.write("                } catch (e) {\n");
      out.write("                    alert(e);\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </SCRIPT>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            spotWisata.clear();
            C_Spot.setDaftarSpot();
        
      out.write("\n");
      out.write("        <INPUT type=\"button\" value=\"Add Row\" onclick=\"addRow('dataTable')\" />\n");
      out.write("        <INPUT type=\"button\" value=\"Delete Row\" onclick=\"deleteRow('dataTable')\" />\n");
      out.write("        <TABLE id=\"dataTable\" width=\"350px\">\n");
      out.write("           <!-- <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <input type=\"text\" name=\"namapaket\" value=\"\" required>\n");
      out.write("                </td>\n");
      out.write("            </tr><-->\n");
      out.write("            <TR>\n");
      out.write("                <TD><INPUT type=\"checkbox\" name=\"chk\"/></TD>\n");
      out.write("                <TD>\n");
      out.write("                    <SELECT name=\"country\">\n");
      out.write("                        ");

                            for (int i = 0; i < spotWisata.getDaftarspotWisata().size(); i++) {
                        
      out.write("\n");
      out.write("                        <OPTION value=\"");
      out.print(spotWisata.getDaftarspotWisata().get(i).getNamaSpot());
      out.write('"');
      out.write('>');
      out.print(spotWisata.getDaftarspotWisata().get(i).getNamaSpot());
      out.write("</OPTION>\n");
      out.write("                            ");


                                }
                            
      out.write("       \n");
      out.write("                    </SELECT>\n");
      out.write("                </TD>\n");
      out.write("            </TR>\n");
      out.write("           <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <select name=\"jenis\">\n");
      out.write("                        <option value=\"kuliner\">KULINER</option>\n");
      out.write("                        <option value=\"kuliner\">WISATA</option>\n");
      out.write("                    </select>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <!--\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <input type=\"text\" name=\"harga\" value=\"\" required>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td colspan=\"2\">\n");
      out.write("                    <textarea>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </TABLE>\n");
      out.write("<-->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
