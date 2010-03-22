package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AcknowledgeORFView2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Acknowledge Order Request Form</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\t<script  language=\"JavaScript\">\n");
      out.write("\t\tfunction calculate(){\n");
      out.write("\t\t\tvar unitPrice = document.orfSupplyForm.price.value;\n");
      out.write("\t\t\tvar quantity = document.orfSupplyForm.quantity.value;\n");
      out.write("\t\t\tvar totalprice = unitPrice * quantity;\n");
      out.write("\t\t\tDocument.orfSupplyForm.totalPrice.value = totalprice;\n");
      out.write("\t\t}\n");
      out.write("\t</script>\n");
      out.write("\n");
      out.write("    <body onload=\"calculate()\">\n");
      out.write("      ");
 String orfID = request.getParameter("pendingORF");
      int parsed_orfID = Integer.parseInt(orfID);
      java.util.List orfSupply = inventorysystem.dao.ORF_SupplyPeer.retrieveUnacknowledgedORFSupply(parsed_orfID);
      int j = 1;
      out.write("\n");
      out.write("        ");
      out.print( orfID);
      out.write("\n");
      out.write("\t\t<form name = \"orfSupplyForm\" method=\"POST\" action=\"AcknowledgeORFController.jsp\">\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Approve Supply</td>\n");
      out.write("                <td>Item No.</td>\n");
      out.write("                <td>Quantity</td>\n");
      out.write("                <td>Unit of Issue</td>\n");
      out.write("                <td>Supply Name</td>\n");
      out.write("                <td>Supply Type</td>\n");
      out.write("                <td>Estimated Unit Cost</td>\n");
      out.write("                <td>Estimated Total Cost</td>\n");
      out.write("            </tr>\n");
      out.write("            ");
 for (int i = 0; i < orfSupply.size(); i++){
                inventorysystem.dao.ORF_Supply orfSupplyList = (inventorysystem.dao.ORF_Supply)orfSupply.get(i);
                String orfSupplyDisplay = orfSupplyList.getSupply_name();
                
      out.write("<tr>\n");
      out.write("                    <td><input type =\"checkbox\" name=\"orfSupplyCheck\" value=\"");
      out.print(orfSupplyDisplay);
      out.write("\"/></td>\n");
      out.write("                    <td>");
      out.print( j++ );
      out.write("</td>\n");
      out.write("                    <td><input type=\"text\" name=\"quantity\" onblur=\"calculate()\" value=\"");
      out.print(orfSupplyList.getQuantity());
      out.write("\"/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"number\"/>\n");
      out.write("                        <select>\n");
      out.write("                            <option value=\"L\">L</option>\n");
      out.write("                            <option value=\"g\">g</option>\n");
      out.write("                            <option value=\"mL\">mL</option>\n");
      out.write("                            <option value=\"kg\">kg</option>\n");
      out.write("                    <td>");
      out.print( orfSupplyDisplay);
      out.write("</td>\n");
      out.write("                        </select></td>\n");
      out.write("                    <td>");
      out.print(orfSupplyList.getSupply_type());
      out.write("</td>\n");
      out.write("                    <td><input type=\"text\" name=\"price\" onblur = \"calculate()\" value=\"");
      out.print(orfSupplyList.getPrice());
      out.write("\"/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"totalPrice\"/></td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("               ");
 }
      out.write("\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <input type =\"submit\" name=\"button\" value=\"Approve Selected Items\" />\n");
      out.write("      </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
