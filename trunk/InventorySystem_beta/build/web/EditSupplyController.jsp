<%
    String supplyName=request.getParameter("sname");
    String supplyType=request.getParameter("type");
    String supplyQuantity=request.getParameter("quantity");
    String supplySource=request.getParameter("source");
    String supplyLocation=request.getParameter("location");

    boolean result=inventorysystem.dao.SupplyPeer.editSupply(supplyName, supplyType, supplyQuantity, supplySource, supplyLocation);

    if(result==true){
        %>
        <jsp:include page="EditSupplyView.jsp"/>
        <center>Successfully Updated.</center>
        <%}
%>
