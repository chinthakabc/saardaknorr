<%
    if(request.getParameter("confirm").equals("Yes")){
        String supplyName=request.getParameter("sname");
        String supplyType=request.getParameter("type");
        String supplyQuantity=request.getParameter("quantity");
        String supplySource=request.getParameter("source");
        String supplyLocation=request.getParameter("location");

        boolean result=inventorysystem.dao.SupplyPeer.editSupply(supplyName, supplyType, supplyQuantity, supplySource, supplyLocation);

            if(result==true){
                %>
                <center>Successfully Updated.</center>
                <jsp:include page="EditSupplyView.jsp"/>
                <%
            }else{
                %>
                <center>Failed to Update Database.</center>
                <jsp:include page="EditSupplyView.jsp"/>
                <%
            }
   }else{
        %>
        <jsp:forward page="EditSupplyView.jsp"/>
        <%
   }
%>
