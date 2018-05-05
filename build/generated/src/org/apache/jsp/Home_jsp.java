package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/content.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>DVS Tour</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>  \n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    .dropdown-content {\n");
      out.write("        display: none;\n");
      out.write("        position: absolute;\n");
      out.write("        background-color: #f9f9f9;\n");
      out.write("        min-width: 80px;\n");
      out.write("        box-shadow: 0px 8px 10px 0px rgba(0,0,0,0.2);\n");
      out.write("        z-index: 1;\n");
      out.write("    }\n");
      out.write("    .dropdown-content a {\n");
      out.write("        color: black;\n");
      out.write("        padding: 12px 16px;\n");
      out.write("        text-decoration: none;\n");
      out.write("        display: block;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .dropdown:hover .dropdown-content {\n");
      out.write("    display: block;\n");
      out.write("    background-color: #000080;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".dropdown:hover .dropbtn {\n");
      out.write("    background-color: #000080;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>DVS Tour </title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"home.css\" media=\"screen\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrap\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <!--                <img src=\"img/hotel indonesialogo.jpg\">-->\n");
      out.write("                <h1>DVS TOUR</h1>\n");
      out.write("                <h2>Jl. Kalimantan No. 9, Sosromenduran, Gedong Tengen,\n");
      out.write("                    Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271</h2>\n");
      out.write("                <h3>Telepon (0411) 320707 Fax: (0411) 324475</h3>\n");
      out.write("                <a href=\"../../../../AppData/Local/Temp/Login.URL\"></a>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div id=\"menu\" >\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"Home.jsp\" >Home</a></li>\n");
      out.write("                    <li><a href=\"wisata.jsp\" >Wisata</a></li>\n");
      out.write("                    <li><div class=\"dropdown\">\n");
      out.write("                            <a class=\"dropdown\">Paket</a>\n");
      out.write("                            <div class=\"dropdown-content\">\n");
      out.write("                                <a href=\"paketkuliner.jsp\">Kuliner</a>\n");
      out.write("                                <a href=\"paketwisata.jsp\">Wisata</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div></li>\n");
      out.write("                        ");

                            String status = (String) session.getAttribute("rname");
                            if (status != null) {
                        
      out.write("\n");
      out.write("                    <li><a href=\"LogoutServlet\">Logout</a></li>\n");
      out.write("                        ");

                        } else {
                        
      out.write("\n");
      out.write("                    <li><a href=\"LoginAdmin.jsp\" >Login</a></li>    \n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    <li><a href=\"\"></a></li>\n");
      out.write("                    <form  action=\"./searchServlet\" method=\"GET\" style=\"float: right\">\n");
      out.write("                        <input style=\"padding:7px 15px;\n");
      out.write("                               background:rgba(50, 50, 50, 0.2);\n");
      out.write("                               /*border:0px solid #dbdbdb;*/\n");
      out.write("                               background-color: white;\n");
      out.write("                               \" \n");
      out.write("                               type=\"text\" name=\"cari\" placeholder=\"Cari...\" required>\t\n");
      out.write("                        <input style=\"  position:relative;\n");
      out.write("                               padding:5px 16px;\n");
      out.write("                               left:-0px;\n");
      out.write("                               border:2px solid #000000;\n");
      out.write("                               background-color:#000000;\n");
      out.write("                               color:#fafafa;\" \n");
      out.write("                               type=\"submit\"  value=\"Cari\">\t\t\n");
      out.write("                    </form>                   \n");
      out.write("                    <a  style=\"float: right\" href=\"Troli.jsp\">\n");
      out.write("                        <img width=\"30\" height=\"30\" src=\"image/Troli.png\">\n");
      out.write("                    </a>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div style=\"clear: both; \"> </div>\n");
      out.write("        </div>\n");
      out.write("    </div>                    \n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"home.css\" media=\"screen\"/>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("<!--            <iframe src=\"index.html\" name=\"frame\" style=\" width: 100%; min-height: 400px; border:none;\" >               \n");
      out.write("        </iframe>-->\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"home.css\" media=\"screen\"/>\n");
      out.write("<!--  <title>Bootstrap Example</title>-->\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<!--  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css \">-->\n");
      out.write("<!--  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!--<div class=\"container\">\n");
      out.write("  <div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("     Indicators \n");
      out.write("    <ol class=\"carousel-indicators\">\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\n");
      out.write("      <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\n");
      out.write("    </ol>-->\n");
      out.write("\n");
      out.write("<!--     Wrapper for slides \n");
      out.write("    <div class=\"carousel-inner\">\n");
      out.write("      <div class=\"item active\">\n");
      out.write("        <img src=\"image/Malioboro.jpg\" alt=\"gambar1\" style=\"width:71%;\">\n");
      out.write("      </div>-->\n");
      out.write("\n");
      out.write("    <div class=\"item\">\n");
      out.write("          <center>\n");
      out.write("        <img src=\"image/Malioboro.jpg\" alt=\"Malioboro\" style=\"width:71%;\">\n");
      out.write("          </center>\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("<!--      <div class=\"item\">\n");
      out.write("        <img src=\"image/gudeg.jpg\" alt=\"gambar3\" style=\"width:71%;\">\n");
      out.write("      </div>\n");
      out.write("    </div>-->\n");
      out.write("\n");
      out.write("<!--     Left and right controls \n");
      out.write("    <a class=\"left carousel-control\" href=\"#myCarousel\" data-slide=\"prev\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("      <span class=\"sr-only\">Previous</span>\n");
      out.write("    </a>\n");
      out.write("    <a class=\"right carousel-control\" href=\"#myCarousel\" data-slide=\"next\">\n");
      out.write("      <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("      <span class=\"sr-only\">Next</span>\n");
      out.write("    </a>-->\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer> ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <style >  footer {\n");
      out.write("\n");
      out.write("            /*            text-align: center;\n");
      out.write("                        \n");
      out.write("                        width: 100%;\n");
      out.write("                        bottom: 0px;\n");
      out.write("                        top : auto;\n");
      out.write("                        margin-top: 50rem;\n");
      out.write("                        background-color: #33ffff;\n");
      out.write("                        width: 7\n");
      out.write("                        margin: 0 auto;*/\n");
      out.write("\n");
      out.write("            bottom: 0px;\n");
      out.write("            background: rgb(0, 191, 255); \n");
      out.write("            color: black;\n");
      out.write("            margin-top: 50px ;\n");
      out.write("            margin-bottom: 50px;\n");
      out.write("            position: relative;\n");
      out.write("\n");
      out.write("            \n");
      out.write("            height: 60px;\n");
      out.write("            margin: 0 auto;\n");
      out.write("            width: 965px;\n");
      out.write("            font-family: \"Font Digital\";\n");
      out.write("            src: fonts('glyphicons-halflings-regular.ttf');\n");
      out.write("\n");
      out.write("\n");
      out.write("        }</style>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <table>\n");
      out.write("            <thead>\n");
      out.write("                <tr>\n");
      out.write("            <b><p>Copyright USD 2017</p></b>\n");
      out.write("            </tr>\n");
      out.write("            </thead>\n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td><a href=\"lokasi.jsp\" target=\"frame\">\n");
      out.write("                            <img src=\"image/googlemap.jpg\" width=\"25\" height=\"25\" />\n");
      out.write("                        </a></td>\n");
      out.write("                    <td><img src=\"image/t-icn.png\"  usemap=\"#sosmed\" width=\"75\" height=\"25\">\n");
      out.write("\n");
      out.write("                        <map name=\"sosmed\">\n");
      out.write("                            <area shape=\"circle\" coords=\"0,0,20\" alt=\"fb\"  href=\"https://www.facebook.com/\">\n");
      out.write("                            <area shape=\"circle\" coords=\"20,0,20\" alt=\"twitter\" href=\"https://twitter.com/\">\n");
      out.write("                            <area shape=\"circle\" coords=\"40,0,20\" alt=\"gmail\" href=\"https://mail.google.com/\">\n");
      out.write("                        </map></td> \n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("    </center>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("</footer>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
