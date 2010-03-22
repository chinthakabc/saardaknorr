<%
    int numOfNormalSupply = 0;
    java.util.List notifySupplies = inventorysystem.dao.SupplyPeer.retrieveAllSupplies();

    if (notifySupplies.isEmpty())
    {
        out.println("There are no supplies");
    }
    else{
        %>
        <table>
        <tr>

            <td><b>Supply</b> </td>
            <td><b>Quantity</b> </td>
            <!-- -->

            <!-- -->
        </tr>
        <%

                    for(int i=0; i<notifySupplies.size(); i++){
                       inventorysystem.dao.Supply supply = (inventorysystem.dao.Supply)notifySupplies.get(i);
                       int supply_quantity = supply.getQuantity();

                        if(supply_quantity <= 1)
                        {
                            String supply_name = supply.getName();
                            %>
                                <tr>
                                    <td><h5><%=supply_name%></h5></td>
                                    <td><h5><%=supply_quantity%></h5></td>
                                </tr>
                            <%

                        }
                       if(supply_quantity>1)
                           numOfNormalSupply++;
                    }
      %>
        </table>
      <%
    }

    if((numOfNormalSupply==notifySupplies.size()) && (notifySupplies.size()>1) ){%>
            <table>
                <tr>
                    <td><h5>Supplies are </h5></td>
                    <td><h5>Normal </h5></td>
                </tr>
            </table>
                <%
    }
%>

<!-- -->





