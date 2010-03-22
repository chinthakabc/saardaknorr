<%--
    Document   : AcknowledgeORFView
    Created on : Mar 4, 2010, 5:21:02 PM
    Author     : Jenneth
--%>

<%
   String s= (String) session.getAttribute("username");
   if(s==null)
    %><jsp:forward page="index.jsp"/><%;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Acknowledge ORF</title>
    </head>
    <%--<jsp: forward page="AcknowledgeORFController.jsp">--%>
    <body>
        <form method ="POST" action ="AcknowledgeORFView2.jsp">
            <table border ="1" cellpadding ="4">
                <tr>
                    <td>View ORF</td>
                    <td>ORF Name</td>
                    <td>Issue Date</td>
                    <td>User</td>
                </tr>
                    <%
                    java.util.List pendingORF = inventorysystem.dao.ORFPeer.retrieveInactiveORF();
                    for(int i = 0; i < pendingORF.size(); i++){
                    inventorysystem.dao.ORF ORFList = (inventorysystem.dao.ORF)pendingORF.get(i);
                    String[]  orf= ORFList.returnPendingORF().split(":");%>
                    <tr>
                        <td><input type="radio" name="pendingORF1" value="<%=orf[0]%>"/></td>
                        <td><%=orf[0]%></td>
                        <td><%=orf[1]%></td>
                        <td><%=orf[2]%></td>
                    </tr>
                    <%}%>
            </table>

            <input type ="submit" name ="button" value="View">
        </form>
    </body>
</html>
