package org.apache.jsp.hw;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class tinhtong_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Tính Tổng</title>\n");
      out.write("        <style>\n");
      out.write("            #left{\n");
      out.write("                text-align: left;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function factorialize(num) {\n");
      out.write("                if (num === 0) { return 1; }\n");
      out.write("                return num * factorialize(num-1);\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function sum(num){\n");
      out.write("                var s= 0;\n");
      out.write("                for(var i = 0; i <= num ; i++) s += i;\n");
      out.write("                return s;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function Tinh(){\n");
      out.write("                var num = document.getElementById(\"n\").value;\n");
      out.write("                document.getElementById(\"sum\").innerHTML = \"= \" + sum(num);\n");
      out.write("                document.getElementById(\"fact\").innerHTML = \"= \" + factorialize(num);\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Mời bạn nhập vào n</h1>\n");
      out.write("        <table name=\"tinhtong\" border=\"0px\" >\n");
      out.write("            <tr >\n");
      out.write("                <td id=\"left\">n </td>\n");
      out.write("                <td><input type=\"text\" id=\"n\" placeholder=\"= ?\"/></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr >\n");
      out.write("                <td id=\"left\">S = 1+ 2 + 3 + ... + n </td>\n");
      out.write("                <td><label id=\"sum\"/>= sum(n)</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr >\n");
      out.write("                <td id=\"left\">S = n!  </td>\n");
      out.write("                <td><label id=\"fact\"/>= fact(n)</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr align=\"center\">\n");
      out.write("                <td colspan=\"2\"><input type=\"submit\" name=\"submit\" value=\"Tính\" onclick=\"Tinh()\"/></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
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
