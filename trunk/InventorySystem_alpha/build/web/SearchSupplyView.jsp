<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
   String s= (String) session.getAttribute("username");
   if(s==null)
    %><jsp:forward page="index.jsp"/><%
%>

<html>
    <body>
  

                    <form method="POST" action="SearchSupplyController.jsp">
                        <input type="text" name="searchsupply" size="10" />
                    <input type="submit" value="Search" />
                    </form>
    </body>
</html>
