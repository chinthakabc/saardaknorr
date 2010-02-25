<%
    String supplyname;
    String quantity;
    String source;
    String location;
    String type;

    supplyname = request.getParameter("sname");
    quantity  = request.getParameter("quantity");
    source = request.getParameter("source");
    type  = request.getParameter("supply_type");
    location = request.getParameter("location");

    inventorysystem.dao.SupplyPeer.addSupply(supplyname, type, quantity, source, location);
    

%>
<center>Successfully Added</center>
<jsp:include page="AddSupplyView.jsp"/>




