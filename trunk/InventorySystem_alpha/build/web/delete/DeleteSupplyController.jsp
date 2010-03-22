<%-- 
    Document   : DeleteSupplyController
    Created on : Feb 16, 2010, 8:43:35 PM
    Author     : mmmmarci
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%! String[] toBeDeleted; %>


<%
   toBeDeleted = request.getParameterValues("deleteSupplies");

   for(int i=0; i<toBeDeleted.length;i++){
   if (toBeDeleted[i] != null)
   {
       inventorysystem.dao.SupplyPeer.deleteSupply(toBeDeleted[i]);
   }
   }

%>
