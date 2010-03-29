<%
boolean d=false;
String division = request.getParameter("divisiontype");

if(request.getParameter("button").equals("Yes")){
    String[] toBeDeleted = request.getParameterValues("itemstoBeDeleted");
    String[] supply_amt = request.getParameterValues("supply_amt");
    int j=0;

    if(division.equals("AnaChem")){
    //out.println(division);
        for(int i=0; i<toBeDeleted.length; i++){
            if(toBeDeleted[i]!=null){
            String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Delete";
            int prev_value = Integer.parseInt(supply_amt[j]);
            int curr_value = 0;
            String notes = "Deleted:"+toBeDeleted[i];
            division = "Analytical and Environmental Chemistry";
            
            d = inventorysystem.dao.Supply_AnaChemPeer.deleteSupply(toBeDeleted[i]);
            if(d=true)
            {
                inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, division, prev_value, curr_value, notes);

            }
          }
                j++;
        
        }//for loop
            if(d=true){%>


    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Successfully Deleted.");
    </script>


<%

            }else{
            %>

    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Failed to delete supply.");
    </script>

            
            <%
            }


    }//if anachem
    else if(division.equals("BioChem")){
for(int i=0; i<toBeDeleted.length; i++){
            if(toBeDeleted[i]!=null){
            String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Delete";
            int prev_value = Integer.parseInt(supply_amt[j]);
            int curr_value = 0;
            String notes = "Deleted:"+toBeDeleted[i];
            division = "Biochemistry and Agricultural Chemistry";
            
                d = inventorysystem.dao.Supply_BioChemPeer.deleteSupply(toBeDeleted[i]);
                if(d=true)
            {
                inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, division, prev_value, curr_value, notes);

            }
            }
                j++;

        }//for loop
            if(d=true){%>

    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Successfully Deleted.");
    </script>

<%

            }else{
            %>

    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Failed to delete supply.");
    </script>


            <%
            }


        }//if biochem

        else if(division.equals("GenChem")){
        for(int i=0; i<toBeDeleted.length; i++){
            if(toBeDeleted[i]!=null){
                String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Delete";
            int prev_value = Integer.parseInt(supply_amt[j]);
            int curr_value = 0;
            String notes = "Deleted:"+toBeDeleted[i];
            division = "General Chemistry and Chemical Education";
            
                d = inventorysystem.dao.Supply_GenChemPeer.deleteSupply(toBeDeleted[i]);
                if(d=true)
            {
                inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, division, prev_value, curr_value, notes);

            }
            }
                j++;

        }//for loop
            if(d=true){%>

    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Successfully Deleted.");
    </script>

<%

            }else{
            %>

    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Failed to delete supply.");
    </script>


            <%
            }


        }//if genchem

        else if(division.equals("OrgChem")){
for(int i=0; i<toBeDeleted.length; i++){
            if(toBeDeleted[i]!=null){
                String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Delete";
            int prev_value = Integer.parseInt(supply_amt[j]);
            int curr_value = 0;
            String notes = "Deleted:"+toBeDeleted[i];
            division = "Organic Chemistry and Natural Products";
           
                d = inventorysystem.dao.Supply_OrgChemPeer.deleteSupply(toBeDeleted[i]);
                if(d=true)
            {
                inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, division, prev_value, curr_value, notes);

            }
            }
                j++;

        }//for loop
            if(d=true){%>

    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Successfully Deleted.");
    </script>

<%

            }else{
            %>
 
    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Failed to delete supply.");
    </script>


            <%
            }


            }// if orgchem

        else if(division.equals("PhyChem")){

for(int i=0; i<toBeDeleted.length; i++){
            if(toBeDeleted[i]!=null){
                String user=(String)session.getAttribute("user_name");
            int userid=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
            String action = "Delete";
            int prev_value = Integer.parseInt(supply_amt[j]);
            int curr_value = 0;
            String notes = "Deleted:"+toBeDeleted[i];
            division = "Physical and Inorganic Chemistry";
            
                d = inventorysystem.dao.Supply_PhyChemPeer.deleteSupply(toBeDeleted[i]);
                if(d=true)
            {
                inventorysystem.dao.System_LogPeer.updateSystemLog(userid, action, division, prev_value, curr_value, notes);

            }
            }
                j++;

        }//for loop
            if(d=true){%>

    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Successfully Deleted.");
    </script>

<%

            }else{
            %>

    <jsp:include page="DeleteSupplyView.jsp"/>
    <script type="text/javascript">
            alert("Failed to delete supply.");
    </script>


            <%
            }


        }// if phychem

}//if 'YES'
else{//else NO
   %>
    <jsp:include page="DeleteSupplyView.jsp"/>
    <%
}
%>

   
