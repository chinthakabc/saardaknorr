<%
    String supplyName=request.getParameter("sname");
    String supplyType=request.getParameter("type");
    String supplyQty=request.getParameter("prev_qty");
    String supplyQuantity=request.getParameter("quantity");
    String supplyNotes=request.getParameter("action");
    String supplyAmount=request.getParameter("amount");
    String supplyUnit=request.getParameter("unit");
    String supplyLocation=request.getParameter("location");
    boolean result=inventorysystem.dao.SupplyPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit ,supplyLocation);

    if(result==true){
        /*
        String user=(String)session.getAttribute("user_name");
        int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
        String action = "Edit";
        inventorysystem.dao.Supply supplyEdit =(inventorysystem.dao.Supply) inventorysystem.dao.SupplyPeer.retrieveSupply(supplyName);
        int supplyid = supplyEdit.getSupply_ID();
        int prev_value = Integer.parseInt(supplyQty);
        int curr_value = Integer.parseInt(supplyQuantity);
        supplyNotes = supplyNotes+":"+supplyName;

        inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, supplyid,prev_value, curr_value, supplyNotes);
        */%>
        <jsp:include page="EditSupplyView.jsp"/>
        <center>Successfully Updated.</center>
        <%}
%>
