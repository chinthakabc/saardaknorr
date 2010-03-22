<%
boolean d=false;

if(request.getParameter("button").equals("Yes")){
    String[] tobeDeleted = request.getParameterValues("itemstoBeDeleted");
    String[] supply_amt = request.getParameterValues("supply_amt");
    int j=0;
    for(int i=0; i<tobeDeleted.length;i++){
        if (tobeDeleted[i] != null)
        {
            String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Delete";
            inventorysystem.dao.Supply supplyDelete =(inventorysystem.dao.Supply) inventorysystem.dao.SupplyPeer.retrieveSupply(tobeDeleted[i]);
            int supplyid = supplyDelete.getSupply_ID();
            int prev_value = Integer.parseInt(supply_amt[j]);
            int curr_value = 0;
            String notes = "Deleted:"+tobeDeleted[i];
            inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, supplyid, prev_value, curr_value, notes);
            
            d = inventorysystem.dao.SupplyPeer.deleteSupply(tobeDeleted[i]);
        }
        j++;
    }
    if(d==true){
%>
    <center>
        <h3>Successfully Deleted</h3>
    </center>
    <jsp:include page="DeleteSupplyView.jsp"/>
<%
    }
    else{
     %>
    <center>
        <h3>Fail to Delete Supply</h3>
    </center>
    <jsp:include page="DeleteSupplyView.jsp"/>
     <%
    }
}
else{
   %>
    <jsp:include page="DeleteSupplyView.jsp"/>
    <%
}
%>

   
