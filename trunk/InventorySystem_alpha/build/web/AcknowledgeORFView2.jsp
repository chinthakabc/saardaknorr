<%--
    Document   : AcknowledgeORFView2
    Created on : Mar 4, 2010, 6:32:40 PM
    Author     : Jenneth
--%>
<%
   String s= (String) session.getAttribute("username");
   if(s==null)
    %><jsp:forward page="index.jsp"/><%;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acknowledge Order Request Form</title>
    </head>

	<script  language="JavaScript">
		function calculate(){
			var unitPrice = document.orfSupplyForm.price.value;
			var quantity = document.orfSupplyForm.quantity.value;
			var totalprice = unitPrice * quantity;
			Document.orfSupplyForm.totalPrice.value = totalprice;
		}
	</script>

    <body>
      <% String orfID = request.getParameter("pendingORF1");
      int parsed_orfID = Integer.parseInt(orfID);
      java.util.List orfSupply = inventorysystem.dao.ORF_SupplyPeer.retrieveUnacknowledgedORFSupply(parsed_orfID);
      int j = 1;%>
        <%= orfID%>
		<form name = "orfSupplyForm" method="POST" action="AcknowledgeORFView.jsp">
        <table border="1">
            <tr>
                <td>Approve Supply</td>
                <td>Item No.</td>
                <td>Quantity</td>
                <td>Unit of Issue</td>
                <td>Supply Name</td>
                <td>Supply Type</td>
                <td>Estimated Unit Cost</td>
                <td>Estimated Total Cost</td>
            </tr>
            <% for (int i = 0; i < orfSupply.size(); i++){
                inventorysystem.dao.ORF_Supply orfSupplyList = (inventorysystem.dao.ORF_Supply)orfSupply.get(i);
                String orfSupplyDisplay = orfSupplyList.getSupply_name();
                %><tr>
                    <td><input type ="checkbox" name="orfSupplyCheck" value="<%=orfSupplyDisplay%>"/></td>
                    <td><%= j++ %></td>
                    <td><input type="text" name="quantity" onblur="calculate()" value="<%=orfSupplyList.getQuantity()%>"/></td>
                    <td><input type="text" name="number"/>
                        <select>
                            <option value="L">L</option>
                            <option value="g">g</option>
                            <option value="mL">mL</option>
                            <option value="kg">kg</option>
                    <td><%= orfSupplyDisplay%></td>
                        </select></td>
                    <td><%=orfSupplyList.getSupply_type()%></td>
                    <td><input type="text" name="price" onblur = "calculate()" value="<%=orfSupplyList.getPrice()%>"/></td>
                    <td><input type="text" name="totalPrice"/></td>

                </tr>

               <% }%>

        </table>
        <input type ="submit" name="button" value="Approve Selected Items" />
      </form>
    </body>
</html>
