<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Everyday Series
Description: A three-column, fixed-width blog design.
Version    : 1.0
Released   : 20090617

-->
<%
   String s = (String) session.getAttribute("username");
   if(s==null){
    %><jsp:forward page="index.jsp"/><%
    }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Institute of Chemistry Laboratory Supplies Inventory System</title>
<meta name="keywords" content="" />
<meta name="Everyday Series" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo">
            <table>
                <tr>
		<h1><span>&nbsp; &nbsp; &nbsp; UPLB Institute of Chemistry Inventory System</span></h1>
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <center><img src="IC_Logo.png" height="80"></img></center>
                </tr>
             </table>
	</div>
</div>
<!-- end header -->
<div id="wrapper">
	<!-- start page -->
	<div id="page">
	<div id="page-bg">
		<div id="sidebar1" class="sidebar">
		<%
   String loggedin= (String) session.getAttribute("username");
   if(loggedin==null) loggedin="Guest";
    String stat=(String) session.getAttribute("status");
          if(stat.equals("admin")){
       %>
	   			<ul>
				<li>
					<h2>Supply</h2>
					<ul>
						<li><a href="AddSupplyView.jsp">Add new supply</a></li>
						<li><a href="EditSupplyView.jsp">Edit supply's info</a></li>
						<li><a href="DeleteSupplyView.jsp">Delete a supply </a></li>
						<li><a href="IssueORFView.jsp">Submit Order Request Form</a></li>

					</ul>
				</li>
				<li>
					<h2>Manage Accounts</h2>
					<ul>
                                                <li><a href="AcknowledgeORFView.jsp">Acknowledge Order Requests</a></li>
						<li><a href="ApproveAccountView.jsp">Approve Account</a></li>
						<li><a href="SetUserStatusView.jsp">Set User Status</a></li>
					</ul>
				</li>
				<li>
					<h2>Reports</h2>
					<ul>
						<li><a href="ReagentsInventoryView.jsp">Laboratory Reagents</a></li>
						<li><a href="ApparatusInventoryView.jsp">Laboratory Apparatus</a></li>
						<li><a href="ORFInventoryView.jsp">Order Requests Summary</a></li>
                                                <li><a href="SystemLogView.jsp">System Log</a></li>

					</ul>
				</li>
			</ul>
	   <%}else{%>
			<ul>
				<li>
					<h2>Supply</h2>
					<ul>
						<li><a href="AddSupplyView.jsp">Add a new supply</a></li>
						<li><a href="EditSupplyView.jsp">Edit supply's info</a></li>
						<li><a href="IssueORFView.jsp">Submit Order Request Form</a></li>

					</ul>
				</li>
				<li>
					<h2>Reports</h2>
					<ul>
						<li><a href="ReagentsInventoryView.jsp">Laboratory Reagents</a></li>
						<li><a href="ApparatusInventoryView.jsp">Laboratory Apparatus</a></li>
						<li><a href="ORFInventoryView.jsp">Order Requests Summary</a></li>

					</ul>
				</li>
			</ul>
	   <%}%>

		</div>
		<!-- start content -->
		<div id="content">
                    <p align="right">
                        <a href="main.jsp"><img src="home_button.jpg" height="50" title="Home"></img></a> <a href="LogoutController.jsp"><img src="delete.png" height="35" title="Logout"></img></a></p>
<form method="POST" action="EditSupplyView2.jsp">
<center>
    <br/>
    <h2>Edit Supply</h2><br/>
    <%
    String st = (String) session.getAttribute("status");
    String dv = (String) session.getAttribute("division");
    
    java.util.List supplies3 = null;
    java.util.List supplies4 = null;
    java.util.List supplies5 = null;
    java.util.List supplies6 = null;
    java.util.List supplies7 = null;

    if(st.equals("user")){
        if(dv.equals("General Chemistry and Chemical Education")){
            supplies3 = inventorysystem.dao.Supply_GenChemPeer.retrieveAllSupplies();
            if (supplies3.isEmpty()){
            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
            %>
            <h3>General Chemistry and Chemical Education</h3>
            <table border="1" cellpadding="2">
            <tr>
                <td><b>Name</b></td>
                <td><b>Type</b></td>
                <td><b>Quantity</b></td>
                <td><b>Unit of Issue</b></td>
            </tr>
                <%
                for(int i=0; i<supplies3.size(); i++)
                {
                    inventorysystem.dao.Supply_GenChem supplyList = (inventorysystem.dao.Supply_GenChem)supplies3.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    </tr>
                <%}%>
                </table>
        <%
        }else if (dv.equals("Biochemistry and Agricultural Chemistry")){
            supplies3 = inventorysystem.dao.Supply_BioChemPeer.retrieveAllSupplies();
            if (supplies3.isEmpty()){
                            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
            %>
            <h3>Biochemistry and Agricultural Chemistry</h3>
            <table border="1" cellpadding="2">
            <tr>
                <td><b>Name</b></td>
                <td><b>Type</b></td>
                <td><b>Quantity</b></td>
                <td><b>Unit of Issue</b></td>
            </tr>
                <%
                for(int i=0; i<supplies3.size(); i++)
                {
                    inventorysystem.dao.Supply_BioChem supplyList = (inventorysystem.dao.Supply_BioChem)supplies3.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    </tr>
                <%}%>
                </table>
        <%
        }else if(dv.equals("Physical and Inorganic Chemistry")){
            supplies3 = inventorysystem.dao.Supply_PhyChemPeer.retrieveAllSupplies();
            if (supplies3.isEmpty()){
                            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
            %>
            <h3>Physical and Inorganic Chemistry</h3>
            <table border="1" cellpadding="2">
            <tr>
                <td><b>Name</b></td>
                <td><b>Type</b></td>
                <td><b>Quantity</b></td>
                <td><b>Unit of Issue</b></td>
            </tr>
                <%
                for(int i=0; i<supplies3.size(); i++)
                {
                    inventorysystem.dao.Supply_PhyChem supplyList = (inventorysystem.dao.Supply_PhyChem)supplies3.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    </tr>
                <%}%>
                </table>
        <%
        }else if(dv.equals("Analytical and Environmental Chemistry")){
            supplies3 = inventorysystem.dao.Supply_AnaChemPeer.retrieveAllSupplies();
            if (supplies3.isEmpty()){
                            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
            %>
            <h3>Analytical and Environmental Chemistry</h3>
            <table border="1" cellpadding="2">
            <tr>
                <td><b>Name</b></td>
                <td><b>Type</b></td>
                <td><b>Quantity</b></td>
                <td><b>Unit of Issue</b></td>
            </tr>
                <%
                for(int i=0; i<supplies3.size(); i++)
                {
                    inventorysystem.dao.Supply_AnaChem supplyList = (inventorysystem.dao.Supply_AnaChem)supplies3.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    </tr>
                <%}%>
                </table>
        <%
        }else{
            supplies3 = inventorysystem.dao.Supply_OrgChemPeer.retrieveAllSupplies();
            if (supplies3.isEmpty()){
                            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
            %>
            <h3>Organic Chemistry and Natural Products</h3>
            <table border="1" cellpadding="2">
            <tr>
                <td><b>Name</b></td>
                <td><b>Type</b></td>
                <td><b>Quantity</b></td>
                <td><b>Unit of Issue</b></td>
            </tr>
                <%
                for(int i=0; i<supplies3.size(); i++)
                {
                    inventorysystem.dao.Supply_OrgChem supplyList = (inventorysystem.dao.Supply_OrgChem)supplies3.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    </tr>
                <%}%>
                </table>
        <%
        }
    }else{
    %>
    <h3>ALL SUPPLIES</h3>
    <table border="1" cellpadding="2">
    <tr>
        <td><b>Name</b></td>
        <td><b>Type</b></td>
        <td><b>Quantity</b></td>
        <td><b>Unit of Issue</b></td>
        <td><b>Location</b></td>
    </tr>
                <%
                supplies3 = inventorysystem.dao.Supply_GenChemPeer.retrieveAllSupplies();
                supplies4 = inventorysystem.dao.Supply_OrgChemPeer.retrieveAllSupplies();
                supplies5 = inventorysystem.dao.Supply_PhyChemPeer.retrieveAllSupplies();
                supplies6 = inventorysystem.dao.Supply_AnaChemPeer.retrieveAllSupplies();
                supplies7 = inventorysystem.dao.Supply_BioChemPeer.retrieveAllSupplies();
             if (supplies3.isEmpty()&&supplies4.isEmpty()&&supplies5.isEmpty()&&supplies6.isEmpty()&&supplies7.isEmpty()){
            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
                }
                for(int i=0; i<supplies3.size(); i++)
                {
                    inventorysystem.dao.Supply_GenChem supplyList = (inventorysystem.dao.Supply_GenChem)supplies3.get(i);
                    %>
                    <tr>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>|genchem"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    <td>
                        <input type="hidden" name="location" value="genchem"/>
                        General Chemistry and Chemical Education
                    </td>
                    </tr>
                <%}
                for(int i=0; i<supplies4.size(); i++)
                {
                    inventorysystem.dao.Supply_OrgChem supplyList = (inventorysystem.dao.Supply_OrgChem)supplies4.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>|orgchem"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    <td>
                        <input type="hidden" name="location" value="orgchem"/>
                        Organic Chemistry and Natural Products
                    </td>
                    </tr>
                    <%}
                    for(int i=0; i<supplies5.size(); i++)
                    {
                    inventorysystem.dao.Supply_PhyChem supplyList = (inventorysystem.dao.Supply_PhyChem)supplies5.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>|phychem"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    <td>
                        <input type="hidden" name="location" value="phychem"/>
                        Physical and Inorganic Chemistry
                    </td>
                    </tr>
                    <%}
                    for(int i=0; i<supplies6.size(); i++)
                    {
                    inventorysystem.dao.Supply_AnaChem supplyList = (inventorysystem.dao.Supply_AnaChem)supplies6.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>|anachem"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    <td>
                        <input type="hidden" name="location" value=anachem"/>
                        Analytical and Environmental Chemistry
                    </td>
                    </tr>
                    <%}
                    for(int i=0; i<supplies7.size(); i++)
                    {
                    inventorysystem.dao.Supply_BioChem supplyList = (inventorysystem.dao.Supply_BioChem)supplies7.get(i);
                    %>
                    <tr>
                    <%
                    %>
                    <td><input type="radio" name="supplies" value="<%=supplyList%>|biochem"/>
                    <%=supplyList.getName()%>
                    </td>
                    <td>
                    <%=supplyList.getType()%>
                    </td>
                    <td>
                    <%=supplyList.getQuantity()%>
                    </td>
                    <td><%String noval="novalue"; if(supplyList.getAmount() == "" || supplyList.getAmount() == null){out.print("");} else{ out.print(supplyList.getAmount()); }%>&nbsp;
                        <% if((supplyList.getUnit() == null) || (supplyList.getUnit().equals(noval))){out.print("");} else{ out.print(supplyList.getUnit()); }%>
                    </td>
                    <td>
                        <input type="hidden" name="location" value="biochem"/>
                        Biochemistry and Agricultural Chemistry
                    </td>
                    </tr>
                    <%}%>
                    </table>
<%}%>
                    <br/><br/>
                    <input type="submit" name="button" value="Edit Supply"/>
 </center>
</form>
		</div>
		<!-- end content -->
		<!-- start sidebars -->
		<div id="sidebar2" class="sidebar">
                         <ul>
                            <li>
                                <div>
                                    <h2>Notifications</h2>
							<ul>
<%
   if(stat.equals("admin")){
%>
                                                            <li><//jsp:include page="DisplayAdminNotificationView.jsp" /></li>
                                                            <%}else{%>
                                                            <li><//jsp:include page="DisplayNotificationView.jsp" /></li>
                                                            <%}%>
                                                        </ul>
                                </div>
                            </li>
                        </ul>
			<ul>
				<li>
						<div>
							<h2>Site Search</h2>

							<ul>
								<li><jsp:include page="SearchSupplyView.jsp" /></li>
							</ul>
						</div>

				</li>


			</ul>

		</div>
		<!-- end sidebars -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	</div>
	<!-- end page -->
</div>
<div id="footer">
	<p class="copyright">&copy;&nbsp;&nbsp;2010 All Rights Reserved &nbsp;&bull;&nbsp; Created by Team Saardak N'orr.</p>
	<p class="link"><a href="#">Privacy Policy</a>&nbsp;&#8226;&nbsp;<a href="#">Terms of Use</a></p>
</div>
</body>
</html>

