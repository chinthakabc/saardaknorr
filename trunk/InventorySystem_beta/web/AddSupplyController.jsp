<%
    if(request.getParameter("confirm").equals("Yes")){
        String supplyname;
        String quantity;
        String source;
        String location;
        String type;

        supplyname = (String) request.getParameter("sname");
        quantity  = (String) request.getParameter("quantity");
        source = (String) request.getParameter("source");
        type  = (String) request.getParameter("supplytype");
        location = (String) request.getParameter("location");

            boolean r=inventorysystem.dao.SupplyPeer.addNewSupply(supplyname, type, Integer.parseInt(quantity), source, location);
            if(r==true){
                %>
                <center>Successfully Added.</center>
                <jsp:include page="AddSupplyView.jsp"/>
                <%
            }else{
                %>
                <center>Failed to Add Supply.</center>
                <jsp:include page="AddSupplyView.jsp"/>
                <%
            }

%>





