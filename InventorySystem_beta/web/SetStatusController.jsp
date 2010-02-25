<%-- 
    Document   : SetStatusController
    Created on : 02 17, 10, 1:42:29 PM
    Author     : Ray-Ray
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%
if(request.getParameter("button").equals("Cancel")){
%> <jsp:forward page="index.jsp"/><%
}else if(request.getParameter("button").equals("Change Status")){
    boolean a=false;
    String stat = request.getParameter("statusChange");
    String chUser = request.getParameter("userChange");
    if(stat.equalsIgnoreCase("true")){
        a=inventorysystem.dao.UserPeer.activateUser(chUser);
    }else if(stat.equalsIgnoreCase("false")){
        a=inventorysystem.dao.UserPeer.deactivateUser(chUser);
    }
    if(a){
%> <jsp:forward page="SetUserStatusView.jsp">
    <jsp:param name="success" value="1"/>
</jsp:forward>
<%
    }else{
        %>
<jsp:forward page="SetUserStatusView.jsp">
    <jsp:param name="fail" value="1"/>
</jsp:forward>
<%
        }
}else if(request.getParameter("button").equals("Search")){
    try{
        inventorysystem.dao.User someUser = inventorysystem.dao.UserPeer.retrieveUser(request.getParameter("user"));

%>


    <jsp:forward page="SetUserStatusView.jsp">
        <jsp:param name="searchUser" value="<%=someUser.getUserName()%>"/>
        <jsp:param name="searchDiv" value="<%=someUser.getDivision()%>"/>
        <jsp:param name="searchStat" value="<%=someUser.returnStatus()%>"/>
        <jsp:param name="nagsearch" value="0"/>
    </jsp:forward>

<%  }catch(Exception e){
%>
       <jsp:forward page="SetUserStatusView.jsp">
           <jsp:param name="nagsearch" value="1"/>
       </jsp:forward>

<%
    }
}
%>