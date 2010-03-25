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
   String s= (String) session.getAttribute("username");
   if(s==null)
    %><jsp:forward page="index.jsp"/><%
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
%>
        <%
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
<center>
<h2>Issue Order Request Form</h2>
<br/>
<form title="ORF" id="ORF" method="post" action="IssueORFView2.jsp">
    <table>
        <tr>
            <td>Quantity</td><td colspan="2">Unit Of Issue</td><td>Name</td><td>Price Per Unit</td>
        </tr>
        <% int i=0, j=0; %>
        <script language="JavaScript">
        function onlyNumbers(evt)
        {
                var e = event || evt; // for trans-browser compatibility
                var charCode = e.which || e.keyCode;
                if (charCode > 31 && (charCode < 48 || charCode > 57))
                        return false;
                return true;
        }
        </script>
        <%
        String dv=(String) session.getAttribute("division");
        if(dv.equals("General Chemistry and Chemical Education")){
        java.util.List allSupplies=inventorysystem.dao.Supply_GenChemPeer.retrieveAllSupplies();
        if (allSupplies.isEmpty()){
            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
        for(i=1; i<11; i++){%>
            <tr>
                <td><input type="text" name="quantity<%=i%>" onkeypress="return onlyNumbers();" maxlength="3" size="1"/></td>
                <td><input type="text" name="unitval<%=i%>" maxlength="2" size="1" onkeypress="return onlyNumbers();"/></td>
                <td><select name="unit<%=i%>" class="pretext2" id = "input2">
                    <option value="n/a">N/A</option>
                    <option value="gram">g</option>
                    <option value="kilogram">kg</option>
                    <option value="milliliter">mL</option>
                    <option value="liter">L</option></select></td>
                <td>
                    <select name="supplyname<%=i%>" class="pretext2" id="input3">
                    <option value="novalue">[select one]</option>
                    <%for(j=0;j<allSupplies.size();j++){
                    inventorysystem.dao.Supply_GenChem supply= (inventorysystem.dao.Supply_GenChem) allSupplies.get(j);%>
                    <option value="<%=supply.getName()%>"><%=supply.getName().toUpperCase()%></option>
                    <%}%>
                    </select>
                </td>
                    <td><input type="text" name="price<%=i%>" maxlength="7" size="2" onkeypress="return onlyNumbers();"/></td>
                </tr>
        <%}
        }else if(dv.equals("Biochemistry and Agricultural Chemistry")){
        java.util.List allSupplies=inventorysystem.dao.Supply_BioChemPeer.retrieveAllSupplies();
        for(i=1; i<11; i++){%>
            <tr>
                <td><input type="text" name="quantity<%=i%>" onkeypress="return onlyNumbers();" maxlength="3" size="1"/></td>
                <td><input type="text" name="unitval<%=i%>" maxlength="2" size="1" onkeypress="return onlyNumbers();"/></td>
                <td><select name="unit<%=i%>" class="pretext2" id = "input2">
                    <option value="n/a">N/A</option>
                    <option value="gram">g</option>
                    <option value="kilogram">kg</option>
                    <option value="milliliter">mL</option>
                    <option value="liter">L</option></select></td>
                <td>
                    <select name="supplyname<%=i%>" class="pretext2" id="input3">
                    <option value="novalue">[select one]</option>
                    <%for(j=0;j<allSupplies.size();j++){
                    inventorysystem.dao.Supply_BioChem supply= (inventorysystem.dao.Supply_BioChem) allSupplies.get(j);%>
                    <option value="<%=supply.getName()%>"><%=supply.getName().toUpperCase()%></option>
                    <%}%>
                    </select>
                </td>
                    <td><input type="text" name="price<%=i%>" maxlength="7" size="2" onkeypress="return onlyNumbers();"/></td>
                </tr>
        <%}
        }else if(dv.equals("Analytical and Environmental Chemistry")){
        java.util.List allSupplies=inventorysystem.dao.Supply_AnaChemPeer.retrieveAllSupplies();
        if (allSupplies.isEmpty()){
            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
        for(i=1; i<11; i++){%>
            <tr>
                <td><input type="text" name="quantity<%=i%>" onkeypress="return onlyNumbers();" maxlength="3" size="1"/></td>
                <td><input type="text" name="unitval<%=i%>" maxlength="2" size="1" onkeypress="return onlyNumbers();"/></td>
                <td><select name="unit<%=i%>" class="pretext2" id = "input2">
                    <option value="n/a">N/A</option>
                    <option value="gram">g</option>
                    <option value="kilogram">kg</option>
                    <option value="milliliter">mL</option>
                    <option value="liter">L</option></select></td>
                <td>
                    <select name="supplyname<%=i%>" class="pretext2" id="input3">
                    <option value="novalue">[select one]</option>
                    <%for(j=0;j<allSupplies.size();j++){
                    inventorysystem.dao.Supply_AnaChem supply= (inventorysystem.dao.Supply_AnaChem) allSupplies.get(j);%>
                    <option value="<%=supply.getName()%>"><%=supply.getName().toUpperCase()%></option>
                    <%}%>
                    </select>
                </td>
                    <td><input type="text" name="price<%=i%>" maxlength="7" size="2" onkeypress="return onlyNumbers();"/></td>
                </tr>
        <%}
        }else if(dv.equals("Physical and Inorganic Chemistry")){
        java.util.List allSupplies=inventorysystem.dao.Supply_PhyChemPeer.retrieveAllSupplies();
        if (allSupplies.isEmpty()){
            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
        for(i=1; i<11; i++){%>
            <tr>
                <td><input type="text" name="quantity<%=i%>" onkeypress="return onlyNumbers();" maxlength="3" size="1"/></td>
                <td><input type="text" name="unitval<%=i%>" maxlength="2" size="1" onkeypress="return onlyNumbers();"/></td>
                <td><select name="unit<%=i%>" class="pretext2" id = "input2">
                    <option value="n/a">N/A</option>
                    <option value="gram">g</option>
                    <option value="kilogram">kg</option>
                    <option value="milliliter">mL</option>
                    <option value="liter">L</option></select></td>
                <td>
                    <select name="supplyname<%=i%>" class="pretext2" id="input3">
                    <option value="novalue">[select one]</option>
                    <%for(j=0;j<allSupplies.size();j++){
                    inventorysystem.dao.Supply_PhyChem supply= (inventorysystem.dao.Supply_PhyChem) allSupplies.get(j);%>
                    <option value="<%=supply.getName()%>"><%=supply.getName().toUpperCase()%></option>
                    <%}%>
                    </select>
                </td>
                    <td><input type="text" name="price<%=i%>" maxlength="7" size="2" onkeypress="return onlyNumbers();"/></td>
                </tr>
        <%}
        }else{
        java.util.List allSupplies=inventorysystem.dao.Supply_OrgChemPeer.retrieveAllSupplies();
        if (allSupplies.isEmpty()){
            %>
            <script type="text/javascript">
            <!--
            alert("No supplies yet.");
            window.location="http://localhost:8080/InventorySystem/main.jsp";
            //-->
            </script>
            <%
            }
        for(i=1; i<11; i++){%>
            <tr>
                <td><input type="text" name="quantity<%=i%>" onkeypress="return onlyNumbers();" maxlength="3" size="1"/></td>
                <td><input type="text" name="unitval<%=i%>" maxlength="2" size="1" onkeypress="return onlyNumbers();"/></td>
                <td><select name="unit<%=i%>" class="pretext2" id = "input2">
                    <option value="n/a">N/A</option>
                    <option value="gram">g</option>
                    <option value="kilogram">kg</option>
                    <option value="milliliter">mL</option>
                    <option value="liter">L</option></select></td>
                <td>
                    <select name="supplyname<%=i%>" class="pretext2" id="input3">
                    <option value="novalue">[select one]</option>
                    <%for(j=0;j<allSupplies.size();j++){
                    inventorysystem.dao.Supply_OrgChem supply= (inventorysystem.dao.Supply_OrgChem) allSupplies.get(j);%>
                    <option value="<%=supply.getName()%>"><%=supply.getName().toUpperCase()%></option>
                    <%}%>
                    </select>
                </td>
                    <td><input type="text" name="price<%=i%>" maxlength="7" size="2" onkeypress="return onlyNumbers();"/></td>
                </tr>
        <%}
        }%>
    </table>
    <br/>
    <input type="submit" value="Issue ORF"/>
</form>
</center>
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
           stat=(String) session.getAttribute("status");
          if(stat.equals("admin")){
       %>
                                                            <li><//jsp:include page="DisplayAdminNotificationView.jsp" /></li>
                                                            <%} else{%>
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