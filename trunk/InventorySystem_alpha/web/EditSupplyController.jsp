<%
   String div=(String) session.getAttribute("division");
   String stat=(String) session.getAttribute("status");
   if(stat.equals("admin")){
        String supplyName=request.getParameter("sname");
        String supplyType=request.getParameter("type");
        String supplyQty=request.getParameter("prev_qty");
        String supplyQuantity=request.getParameter("quantity");
        String supplyNotes=request.getParameter("action");
        String supplyAmount=request.getParameter("amount");
        String supplyUnit=request.getParameter("unit");
        String supplyLocation=request.getParameter("location");
        boolean result=false;
        int con;
        if(supplyLocation.equals("Analytical and Environmental Chemistry")){
            result=inventorysystem.dao.Supply_AnaChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=0;
        }else if(supplyLocation.equals("General Chemistry and Chemical Education")){
            result=inventorysystem.dao.Supply_GenChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=1;
        }else if(supplyLocation.equals("Biochemistry and Agricultural Chemistry")){
            result=inventorysystem.dao.Supply_BioChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=2;
        }else if(supplyLocation.equals("Organic Chemistry and Natural Products")){
            result=inventorysystem.dao.Supply_OrgChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=3;
        }else{
            result=inventorysystem.dao.Supply_PhyChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=4;
        }
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
            */
            %>
            <script type="text/javascript">
            <!--
            alert("Successfully Updated.");
            window.location="http://localhost:8080/InventorySystem/EditSupplyView.jsp";
            //-->
            </script>
            <%
        }else{
            %>
            <script type="text/javascript">
            <!--
            alert("Failed to edit supply.");
            window.location="http://localhost:8080/InventorySystem/EditSupplyView.jsp";
            //-->
            </script>
            <%
        }
    }else{
        String supplyName=request.getParameter("sname");
        String supplyType=request.getParameter("type");
        String supplyQty=request.getParameter("prev_qty");
        String supplyQuantity=request.getParameter("quantity");
        String supplyNotes=request.getParameter("action");
        String supplyAmount=request.getParameter("amount");
        String supplyUnit=request.getParameter("unit");
        String supplyLocation=request.getParameter("location");
        boolean result=false;
        int con;
        if(div.equals("Analytical and Environmental Chemistry")){
            result=inventorysystem.dao.Supply_AnaChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=0;
        }else if(div.equals("General Chemistry and Chemical Education")){
            result=inventorysystem.dao.Supply_GenChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=1;
        }else if(div.equals("Biochemistry and Agricultural Chemistry")){
            result=inventorysystem.dao.Supply_BioChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=2;
        }else if(div.equals("Organic Chemistry and Natural Products")){
            result=inventorysystem.dao.Supply_OrgChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=3;
        }else{
            result=inventorysystem.dao.Supply_PhyChemPeer.editSupply(supplyName, supplyType, supplyQuantity, supplyAmount, supplyUnit);
            con=4;
        }
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
            */
            %>
            <script type="text/javascript">
            <!--
            alert("Successfully Updated.");
            window.location="http://localhost:8080/InventorySystem/EditSupplyView.jsp";
            //-->
            </script>
            <%
        }else{
            %>
            <script type="text/javascript">
            <!--
            alert("Failed to edit supply.");
            window.location="http://localhost:8080/InventorySystem/EditSupplyView.jsp";
            //-->
            </script>
            <%
        }
    }
%>
