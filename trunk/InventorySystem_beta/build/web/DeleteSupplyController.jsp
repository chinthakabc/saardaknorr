<% if(request.getParameter("button").equals("Yes")){
    String[] tobeDeleted = request.getParameterValues("itemstoBeDeleted");
    for(int i=0; i<tobeDeleted.length;i++){
        if (tobeDeleted[i] != null)
        {
            inventorysystem.dao.SupplyPeer.deleteSupply(tobeDeleted[i]);
        }
    }
%>
<center>
    <h3>Successfully Deleted</h3>
</center>
<jsp:include page="DeleteSupplyView.jsp"/>
<%
}
else{
   %>
<jsp:include page="DeleteSupplyView.jsp"/>
<%
}
%>

   
