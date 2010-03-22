<%
 String confirm=(String)request.getParameter("confirm");

 if(confirm.equals("Yes")){

    String supplyname;
    String quantity;
    String amount;
    String unit;
    String location;
    String type;

    supplyname = request.getParameter("sname");
    quantity  = request.getParameter("quantity");
    amount = request.getParameter("amount");
    unit = request.getParameter("unit");
    type  = request.getParameter("supply_type");
    location = request.getParameter("location");

    boolean r1=inventorysystem.dao.Supply_GenChem.checkIfValidInput(supplyname, type, quantity, location);

    if(r1==true){
        if(location.equals("General Chemistry and Chemical Education"))
        {
            boolean r2=inventorysystem.dao.Supply_GenChemPeer.addSupply(supplyname, type, quantity, amount, unit);
            if(r2==true){
            String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Add";
            inventorysystem.dao.Supply_GenChem supplyAdd =(inventorysystem.dao.Supply_GenChem)inventorysystem.dao.Supply_GenChemPeer.retrieveSupply(supplyname);
            int prev_value = 0;
            int curr_value = Integer.parseInt(quantity);
            String notes = "Added:"+supplyname;

            inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, location, prev_value, curr_value, notes);
            %>
            <script type="text/javascript">
            <!--
            alert("Successfully Added");
            //-->
            </script>
            <jsp:include page="AddSupplyView.jsp"/>
            <%
            }
        }
        else if(location.equals("Biochemistry and Agricultural Chemistry"))
        {
            boolean r2=inventorysystem.dao.Supply_BioChemPeer.addSupply(supplyname, type, quantity, amount, unit);
             if(r2==true){
            String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Add";
            inventorysystem.dao.Supply_BioChem supplyAdd =(inventorysystem.dao.Supply_BioChem)inventorysystem.dao.Supply_BioChemPeer.retrieveSupply(supplyname);
            int prev_value = 0;
            int curr_value = Integer.parseInt(quantity);
            String notes = "Added:"+supplyname;

            inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, location, prev_value, curr_value, notes);
            %>
            <script type="text/javascript">
            <!--
            alert("Successfully Added");
            //-->
            </script>
            <jsp:include page="AddSupplyView.jsp"/>
            <%
            }
        }
        else if(location.equals("Physical and Inorganic Chemistry"))
        {
            boolean r2=inventorysystem.dao.Supply_PhyChemPeer.addSupply(supplyname, type, quantity, amount, unit);
            if(r2==true){
            String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Add";
            inventorysystem.dao.Supply_PhyChem supplyAdd =(inventorysystem.dao.Supply_PhyChem)inventorysystem.dao.Supply_PhyChemPeer.retrieveSupply(supplyname);
            int prev_value = 0;
            int curr_value = Integer.parseInt(quantity);
            String notes = "Added:"+supplyname;

            inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, location, prev_value, curr_value, notes);
            %>
            <script type="text/javascript">
            <!--
            alert("Successfully Added");
            //-->
            </script>
            <jsp:include page="AddSupplyView.jsp"/>
            <%
            }
        }
        else if(location.equals("Analytical and Environmental Chemistry"))
        {
            boolean r2=inventorysystem.dao.Supply_AnaChemPeer.addSupply(supplyname, type, quantity, amount, unit);
             if(r2==true){
            String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Add";
            inventorysystem.dao.Supply_AnaChem supplyAdd =(inventorysystem.dao.Supply_AnaChem)inventorysystem.dao.Supply_AnaChemPeer.retrieveSupply(supplyname);
            int prev_value = 0;
            int curr_value = Integer.parseInt(quantity);
            String notes = "Added:"+supplyname;

            inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, location, prev_value, curr_value, notes);
            %>
            <script type="text/javascript">
            <!--
            alert("Successfully Added");
            //-->
            </script>
            <jsp:include page="AddSupplyView.jsp"/>
            <%
            }
        }
        
        
    }else{
        %>
        <script type="text/javascript">
            <!--
        alert("Please enter valid fields.");
            //-->
        </script>
        <jsp:include page="AddSupplyView.jsp"/>
        <%
    }
}else{
%>
    <jsp:forward page="AddSupplyView.jsp"/>
<%}%>



