<%
    String confirm=(String)request.getParameter("confirm");
    if(confirm.equals("Yes")){
        String user=(String)session.getAttribute("user_name");
        int id=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
        java.util.Date date=new java.util.Date();
        String dt= date.toString();
        boolean con1=inventorysystem.dao.ORFPeer.addORF(id, dt);
        if(con1==true){
            int orfID=inventorysystem.dao.ORFPeer.getORF(dt,id).getORF_ID();
            boolean con2= false;
            int count=0;
            for(int i=1; i<11; i++){
                String s=request.getParameter("supplyname"+i);
                if(!(s==null)){
                    out.println(i);
                    String supplyName=(String)request.getParameter("supplyname"+i);
                    String supplyQuantity=(String)request.getParameter("quantity"+i);
                    String supplyPrice=(String)request.getParameter("price"+i);
                    String supplyAmount=(String)request.getParameter("unitval"+i);
                    String supplyUnit=(String)request.getParameter("unit"+i);
                    String supplyType="reagents";
                    con2 = inventorysystem.dao.ORF_SupplyPeer.addORFSupply(orfID, id, supplyType, supplyName, supplyQuantity, supplyPrice, supplyUnit, supplyAmount);
                    if(con2==false){
                        count++;
                    }
                }
            }
            if(count==0){
                %>
            <script type="text/javascript">
            <!--
            alert("Successfully Issued.");
            window.location="http://localhost:8080/InventorySystem/IssueORFView.jsp";
            //-->
            </script><%
            }
            else{
                %>
                            <script type="text/javascript">
            <!--
            alert("Failed to Issue ORF");
            window.location="http://localhost:8080/InventorySystem/EditSupplyView.jsp";
            //-->
            </script>
            <%
            }
        }else{
            %>
                        <script type="text/javascript">
            <!--
            alert("Failed to Issue ORF");
            window.location="http://localhost:8080/InventorySystem/EditSupplyView.jsp";
            //-->
            </script><%
        }
   }else{
        %><jsp:forward page="main.jsp"/><%
   }
%>