package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("\n");
      out.write("<title>Institute of Chemistry Laboratory Supplies Inventory System<</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"Everyday Series\" content=\"\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- start header -->\n");
      out.write("<div id=\"header\">\n");
      out.write("\t<div id=\"logo\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("\t\t<h1><span>&nbsp; &nbsp; &nbsp; UPLB Institute of Chemistry Inventory System</span></h1>\n");
      out.write("\t\t&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n");
      out.write("                <center><img src=\"IC_Logo.png\" height=\"80\"></img></center>\n");
      out.write("                </tr>\n");
      out.write("             </table>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<!-- end header -->\n");
      out.write("<div id=\"wrapper\">\n");
      out.write("\t<!-- start page -->\n");
      out.write("\t<div id=\"page\">\n");
      out.write("\t<div id=\"page-bg\">\n");
      out.write("\t\t<div id=\"sidebar1\" class=\"sidebar\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<h2>Login</h2>\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t");
session.invalidate();
      out.write("\n");
      out.write("<html>\n");
      out.write("    <body>\n");
      out.write("        <form name=\"example\" action=\"LoginController.jsp\" method=\"POST\">\n");
      out.write("            Username: <input type=\"text\" name=\"username\" /><br/>\n");
      out.write("            Password: <input type=\"password\" name=\"password\"/><br/>\n");
      out.write("            <input type=\"submit\"/>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\t\t\t\t\t</li>\t\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("<ul><li><h2>Register</h2>\n");
      out.write("    <ul><li>\n");
      out.write("            <a href=\"RegisterView.jsp\">Create an Account</a>\n");
      out.write("        </li></ul>\n");
      out.write("        </li></ul>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t<!-- start content -->\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("                    <center><img src=\"up100logo.png\" height=\"250\"></img></center>\n");
      out.write("\t\t\t<div><br/></div>\n");
      out.write("\t\t\t<div class=\"post\">\n");
      out.write("\t\t\t\t<h1 class=\"title\"><a href=\"#\">Welcome to Our Website!</a></h1>\n");
      out.write("\t\t\t\t<p class=\"byline\"><small>Please login to use the site's features.</small></p>\n");
      out.write("\t\t\t\t<div class=\"entry\">\n");
      out.write("\t\t\t\t\t<p><strong>UPLB Institute of Chemistry Inventory System</strong> is a database system that will help the Institute of Chemistry, University of the Philippines, Los Baños to keep track of their laboratory supplies and materials. This is to aid the need of having an automated inventory software that will allow the Institute to easily gather information pertaining to their resources.</p>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- end content -->\n");
      out.write("\t\t<!-- start sidebars -->\n");
      out.write("\t\t<div id=\"sidebar2\" class=\"sidebar\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t<h2>Calendar</h2>\n");
      out.write("                                        ");
 Calendar test =Calendar.getInstance();
                                            
                                         
      out.write("\n");
      out.write("                                         ");
      out.print(test.getTime());
      out.write("\n");
      out.write("                                         \n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- end sidebars -->\n");
      out.write("\t\t<div style=\"clear: both;\">&nbsp;</div>\n");
      out.write("\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end page -->\n");
      out.write("</div>\n");
      out.write("<div id=\"footer\">\n");
      out.write("\t<p class=\"copyright\">&copy;&nbsp;&nbsp;2010 All Rights Reserved &nbsp;&bull;&nbsp; Created by Team Saardak N'orr.</p>\n");
      out.write("\t<p class=\"link\"><a href=\"#\">Privacy Policy</a>&nbsp;&#8226;&nbsp;<a href=\"#\">Terms of Use</a></p>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
