<%
    java.util.List deleteSupplies = inventorysystem.dao.SupplyPeer.retrieveAllSupplies();

    if (deleteSupplies.isEmpty())
    {
        out.println("There are no supplies to be deleted.");
    }
    else
    {
%>
<html>
    <center>
    <br />
        <form method="POST" action="DeleteSupplyController.jsp" >

            <table cellpadding="1" cellspacing="1" border="2">
                <tr> <td>delete</td> <td>supplyname </td></tr>
                <%
                    for(int i=0; i<deleteSupplies.size(); i++){


                       inventorysystem.dao.Supply deleteList = (inventorysystem.dao.Supply)deleteSupplies.get(i);
                       String account = deleteList.returnSupplyName();

                %>
                <tr>
                    <td> <input type="checkbox" name="deleteSupplies" value="<%=account%>" />
                       
                    </td>
                    <td> <%=account%></td>
                    
                <tr/>


                    <%}
                    %>

            </table>
             <input type="submit" value="Delete" >
        </form>
    

     
    </center>
</html>



 <%}%>