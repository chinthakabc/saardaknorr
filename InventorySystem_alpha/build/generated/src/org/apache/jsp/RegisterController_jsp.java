package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegisterController_jsp extends org.apache.jasper.runtime.HttpJspBase
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


    int counter = 0;

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String firstName = request.getParameter("fname");
    String middleName = request.getParameter("mname");
    String lastName = request.getParameter("lname");
    String employeeNumber= request.getParameter("empno");
    String division = request.getParameter("division");
    String contactNo = request.getParameter("contactno");
    String password2 = request.getParameter("password2");

    out.println("ITO ANG CONTAKT NUMBER"+contactNo);
    if (division.contentEquals("none")){
            out.println(""+inventorysystem.dao.User.displayNotification(1));
            out.println("");
            counter = 1;
    }
    if (password.isEmpty() || username. isEmpty() || password2.isEmpty() || contactNo.isEmpty() || employeeNumber.isEmpty() || firstName.isEmpty() || middleName.isEmpty() || lastName.isEmpty()){
            out.println(""+inventorysystem.dao.User.displayNotification(2));
            out.println("");
            counter = 1;
    }
    if(!password.contentEquals(password2)){
            out.println(""+inventorysystem.dao.User.displayNotification(3));
            out.println("");
            counter = 1;
    }
    if(!firstName.matches("^[A-Z a-z]*$") || !middleName.matches("^[A-Z a-z]*$") || !lastName.matches("^[A-Z a-z]*$")){
            out.println(""+inventorysystem.dao.User.displayNotification(4));
            out.println("");
            counter = 1;
    }
    if(!employeeNumber.matches("[0-9]{9}") ){
            out.println(""+inventorysystem.dao.User.displayNotification(5));
            out.println("");
            counter = 1;
    }
    if((!contactNo.matches("[0-9]*"))){
            out.println(""+inventorysystem.dao.User.displayNotification(6));
            out.println("");
            counter = 1;
    }
    if (!username.matches("^[a-z 0-9]*$") ){
            out.println(""+inventorysystem.dao.User.displayNotification(7));
            out.println("");
            counter = 1;
    }

    if (counter == 1){
        
      out.write("\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "RegisterView.jsp" + (("RegisterView.jsp").indexOf('?')>0? '&': '?') + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("user_n", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(username), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("first_n", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(firstName), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("middle_n", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(middleName), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("last_n", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(lastName), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("empno", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(employeeNumber), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("contactno", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(contactNo), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("division", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(division), request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");

        counter = 0;
    }

    else{
        boolean exist = inventorysystem.dao.UserPeer.isExistingAccount(employeeNumber);
        if (exist == true){
           inventorysystem.dao.User.displayNotification(8);
        
      out.write("\n");
      out.write("\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "RegisterView.jsp" + (("RegisterView.jsp").indexOf('?')>0? '&': '?') + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("user_n", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(username), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("first_n", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(firstName), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("middle_n", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(middleName), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("last_n", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(lastName), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("empno", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(employeeNumber), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("contactno", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(contactNo), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("division", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(division), request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("\n");
      out.write("        ");

        }
        else{
            inventorysystem.dao.UserPeer.addUser(username, password,firstName,middleName,lastName,employeeNumber,division,contactNo);
            inventorysystem.dao.User.displayNotification(9);
        }
    }

      out.write('\n');
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
