package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\r\n");
      out.write("<!--\r\n");
      out.write("Design by Free CSS Templates\r\n");
      out.write("http://www.freecsstemplates.org\r\n");
      out.write("Released for free under a Creative Commons Attribution 2.5 License\r\n");
      out.write("\r\n");
      out.write("Name       : Everyday Series\r\n");
      out.write("Description: A three-column, fixed-width blog design.\r\n");
      out.write("Version    : 1.0\r\n");
      out.write("Released   : 20090617\r\n");
      out.write("\r\n");
      out.write("-->\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Institute of Chemistry Laboratory Supplies Inventory System</title>\r\n");
      out.write("<meta name=\"keywords\" content=\"\" />\r\n");
      out.write("<meta name=\"Everyday Series\" content=\"\" />\r\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" media=\"screen\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<!-- start header -->\r\n");
      out.write("<div id=\"header\">\r\n");
      out.write("\t<div id=\"logo\">\r\n");
      out.write("            <table>\r\n");
      out.write("                <tr>\r\n");
      out.write("\t\t<h1><span>&nbsp; &nbsp; &nbsp; UPLB Institute of Chemistry Inventory System</span></h1>\r\n");
      out.write("\t\t&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\r\n");
      out.write("                <center><img src=\"IC_Logo.png\" height=\"80\"></img></center>\r\n");
      out.write("                </tr>\r\n");
      out.write("             </table>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- end header -->\r\n");
      out.write("<div id=\"wrapper\">\r\n");
      out.write("\t<!-- start page -->\r\n");
      out.write("\t<div id=\"page\">\r\n");
      out.write("\t<div id=\"page-bg\">\r\n");
      out.write("\t\t<div id=\"sidebar1\" class=\"sidebar\">\r\n");
      out.write("\t\t");

   String loggedin= (String) session.getAttribute("username");
   if(loggedin==null) loggedin="Guest";

      out.write("\r\n");
      out.write("        ");
String stat=(String) session.getAttribute("status");
          if(stat.equals("admin")){
       
      out.write("\r\n");
      out.write("\t   \t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<h2>Supply</h2>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"AddSupplyView.jsp\">Add new supply</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"EditSupplyView.jsp\">Edit supply's info</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"DeleteSupplyView.jsp\">Delete a supply </a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"IssueORFView.jsp\">Submit Order Request Form</a></li>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<h2>Manage Accounts</h2>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("                                                <li><a href=\"AcknowledgeORFView.jsp\">Acknowledge Order Requests</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"ApproveAccountView.jsp\">Approve Account</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"SetUserStatusView.jsp\">Set User Status</a></li>\t\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<h2>Reports</h2>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"ReagentsInventoryView.jsp\">Laboratory Reagents</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"ApparatusInventoryView.jsp\">Laboratory Apparatus</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"ORFInventoryView.jsp\">Order Requests Summary</a></li>\r\n");
      out.write("                                                <li><a href=\"SystemLogView.jsp\">System Log</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t   ");
}else{
      out.write("\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<h2>Supply</h2>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"AddSupplyView.jsp\">Add a new supply</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"EditSupplyView.jsp\">Edit supply's info</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"IssueORFView.jsp\">Submit Order Request Form</a></li>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t<h2>Reports</h2>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"ReagentsInventoryView.jsp\">Laboratory Reagents</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"ApparatusInventoryView.jsp\">Laboratory Apparatus</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"ORFInventoryView.jsp\">Order Requests Summary</a></li>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t</ul>\t\r\n");
      out.write("\t   ");
}
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- start content -->\r\n");
      out.write("\t\t<div id=\"content\">\r\n");
      out.write("                    <p align=\"right\">\r\n");
      out.write("\t\t\t\t\t<a href=\"LogoutController.jsp\"><img src=\"delete.png\" height=\"35\" title=\"Logout\"></img></a>\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("                    <center><img src=\"checklist2.jpg\"></img></center>\r\n");
      out.write("\t\t<div><br/></div>\r\n");
      out.write("\t\t\t<div class=\"post\">\r\n");
      out.write("\t\t\t\t<h1 class=\"title\">Welcome ");
      out.print(loggedin);
      out.write("!</h1>\r\n");
      out.write("\t\t\t\t<p class=\"byline\"><small>");
      out.print( new java.util.Date() );
      out.write("</small</p>\r\n");
      out.write("\t\t\t\t<div class=\"entry\">\r\n");
      out.write("\t\t\t\t\t<p>All the functionalities that you need are provided in this main page. Feel free to contact us\r\n");
      out.write("\t\t\t\t\tif you have comments or suggestions.Thank you.</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- end content -->\r\n");
      out.write("\t\t<!-- start sidebars -->\r\n");
      out.write("\t\t<div id=\"sidebar2\" class=\"sidebar\">\r\n");
      out.write("                         <ul>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <div>\r\n");
      out.write("                                    <h2>Notifications</h2>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<ul>\r\n");
      out.write("                                                             ");

   loggedin= (String) session.getAttribute("username");
   if(loggedin==null) loggedin="Guest";

      out.write("\r\n");
      out.write("        ");
stat=(String) session.getAttribute("status");
          if(stat.equals("admin")){
       
      out.write("\r\n");
      out.write("                                                            <li>");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "DisplayAdminNotificationView.jsp", out, false);
      out.write("</li>\r\n");
      out.write("                                                            ");
} else{
      out.write("\r\n");
      out.write("                                                            <li>");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "DisplayNotificationView.jsp", out, false);
      out.write("</li>\r\n");
      out.write("                                                            ");
}
      out.write("\r\n");
      out.write("                                                        </ul>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t<h2>Site Search</h2>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "SearchSupplyView.jsp", out, false);
      out.write("</li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- end sidebars -->\r\n");
      out.write("\t\t<div style=\"clear: both;\">&nbsp;</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- end page -->\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("\t<p class=\"copyright\">&copy;&nbsp;&nbsp;2010 All Rights Reserved &nbsp;&bull;&nbsp; Created by Team Saardak N'orr.</p>\r\n");
      out.write("\t<p class=\"link\"><a href=\"#\">Privacy Policy</a>&nbsp;&#8226;&nbsp;<a href=\"#\">Terms of Use</a></p>\r\n");
      out.write("</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
