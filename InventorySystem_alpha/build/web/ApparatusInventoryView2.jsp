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
        <%String stat=(String) session.getAttribute("status");
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
                                                <li><a href="EquipmentInventoryView.jsp">Equipment Apparatus</a></li>
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
                                                <li><a href="EquipmentInventoryView.jsp">Equipment Apparatus</a></li>
						<li><a href="ORFInventoryView.jsp">Order Requests Summary</a></li>

					</ul>
				</li>
			</ul>
	   <%}%>

		</div>
		<!-- start content -->
		<div id="content">
                    <p align="right">
<a href="main.jsp"><img src="home_button.jpg" height="50" title="Home"></img></a> <a href="LogoutController.jsp"><img src="delete.png" height="35" title="Logout"></img></a>
					</p>



<%
 java.util.List supplies = null;
 if(request.getParameter("division").equals("_GenChem"))
 {
     supplies = inventorysystem.dao.Supply_GenChemPeer.retrieveSuppliesByType("apparatus");
 }
 else if(request.getParameter("division").equals("_BioChem"))
 {
     supplies = inventorysystem.dao.Supply_BioChemPeer.retrieveSuppliesByType("apparatus");
 }
 else if(request.getParameter("division").equals("_PhyChem"))
 {
     supplies = inventorysystem.dao.Supply_PhyChemPeer.retrieveSuppliesByType("apparatus");
 }
 else if(request.getParameter("division").equals("_AnaChem"))
 {
     supplies = inventorysystem.dao.Supply_AnaChemPeer.retrieveSuppliesByType("apparatus");
 }
 else if(request.getParameter("division").equals("_OrgChem"))
 {
     supplies = inventorysystem.dao.Supply_OrgChemPeer.retrieveSuppliesByType("apparatus");
 }

                if (supplies.isEmpty())
                {
                    %>
                    <form method="post" action="ApparatusInventoryView2.jsp">
    <h3>Division:</h3>
    <select name="division">
                    <%
                        if(request.getParameter("division").equals("_GenChem")){
                   %>
                   <option value="_GenChem" selected>General Chemistry and Chemical Education</option>
                    <%}
                      else
                      {%>
                      <option value="_GenChem">General Chemistry and Chemical Education</option>
                    <%}%>

                    <%
                        if(request.getParameter("division").equals("_BioChem")){
                   %>
                   <option value="_BioChem" selected>Biochemistry and Agricultural Chemistry</option>
                    <%}
                      else
                      {%>
                      <option value="_BioChem">Biochemistry and Agricultural Chemistry</option>
                    <%}%>

                    <%
                        if(request.getParameter("division").equals("_PhyChem")){
                   %>
                   <option value="_PhyChem" selected>Physical and Inorganic Chemistry</option>
                    <%}
                      else
                      {%>
                       <option value="_PhyChem">Physical and Inorganic Chemistry</option>
                    <%}%>

                    <%
                        if(request.getParameter("division").equals("_AnaChem")){
                   %>
                   <option value="_AnaChem" selected>Analytical and Environmental Chemistry</option>
                    <%}
                      else
                      {%>
                       <option value="_AnaChem">Analytical and Environmental Chemistry</option>
                    <%}%>

                    <%
                        if(request.getParameter("division").equals("_OrgChem")){
                   %>
                   <option value="_OrgChem" selected>Organic Chemistry and Natural Products</option>
                    <%}
                      else
                      {%>
                       <option value="_OrgChem">Organic Chemistry and Natural Products</option>
                    <%}%>

                    </select><input type="submit" value="Go!"/>
    </form><br/>
    <center>
                    <h2>There are no more apparatus in stock.</h2>
    <center>
                    <%
                }
                else
                {
                 %>
                 <br/><br/>
    <form method="post" action="ApparatusInventoryView2.jsp">
    <h3>Division:</h3>
    <select name="division">
                    <%
                        if(request.getParameter("division").equals("_GenChem")){
                   %>
                   <option value="_GenChem" selected>General Chemistry and Chemical Education</option>
                    <%}
                      else
                      {%>
                      <option value="_GenChem">General Chemistry and Chemical Education</option>
                    <%}%>

                    <%
                        if(request.getParameter("division").equals("_BioChem")){
                   %>
                   <option value="_BioChem" selected>Biochemistry and Agricultural Chemistry</option>
                    <%}
                      else
                      {%>
                      <option value="_BioChem">Biochemistry and Agricultural Chemistry</option>
                    <%}%>

                    <%
                        if(request.getParameter("division").equals("_PhyChem")){
                   %>
                   <option value="_PhyChem" selected>Physical and Inorganic Chemistry</option>
                    <%}
                      else
                      {%>
                       <option value="_PhyChem">Physical and Inorganic Chemistry</option>
                    <%}%>

                    <%
                        if(request.getParameter("division").equals("_AnaChem")){
                   %>
                   <option value="_AnaChem" selected>Analytical and Environmental Chemistry</option>
                    <%}
                      else
                      {%>
                       <option value="_AnaChem">Analytical and Environmental Chemistry</option>
                    <%}%>

                    <%
                        if(request.getParameter("division").equals("_OrgChem")){
                   %>
                   <option value="_OrgChem" selected>Organic Chemistry and Natural Products</option>
                    <%}
                      else
                      {%>
                       <option value="_OrgChem">Organic Chemistry and Natural Products</option>
                    <%}%>

                    </select><input type="submit" value="Go!"/>
    </form>

<br/>  <br/>
<center>

    <h2>APPARATUS INVENTORY</h2>

<table border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td><b>Supply Name</b></td>
        <td><b>Quantity</b></td>
        <td><b>Unit of Issue</b></td>

    </tr>
                <%

                for(int i=0; i<supplies.size(); i++)
                {

                    if(request.getParameter("division").equals("_GenChem"))
                    {
                        inventorysystem.dao.Supply_GenChem supplyList = (inventorysystem.dao.Supply_GenChem)supplies.get(i);
                        String supply = supplyList.returnSupplyName();
                        int quantity = supplyList.returnSupplyQuantity();
                        String amount = supplyList.getAmount();
                        String unit = supplyList.getUnit();
                         %>
                    <tr>
                        <td><%=supply%></td>
                        <td><%=quantity%></td>
                        <td><%=amount%>&nbsp;<%=unit%></td>

                     </tr>
                    <%

                    }
                    else if(request.getParameter("division").equals("_BioChem"))
                    {
                        inventorysystem.dao.Supply_BioChem supplyList = (inventorysystem.dao.Supply_BioChem)supplies.get(i);
                        String supply = supplyList.returnSupplyName();
                        int quantity = supplyList.returnSupplyQuantity();
                        String amount = supplyList.getAmount();
                        String unit = supplyList.getUnit();
                         %>
                    <tr>
                        <td><%=supply%></td>
                        <td><%=quantity%></td>
                        <td><%=amount%>&nbsp;<%=unit%></td>

                     </tr>
                    <%


                    }
                    else if(request.getParameter("division").equals("_PhyChem"))
                    {
                        inventorysystem.dao.Supply_PhyChem supplyList = (inventorysystem.dao.Supply_PhyChem)supplies.get(i);
                        String supply = supplyList.returnSupplyName();
                        int quantity = supplyList.returnSupplyQuantity();
                        String amount = supplyList.getAmount();
                        String unit = supplyList.getUnit();
                         %>
                    <tr>
                        <td><%=supply%></td>
                        <td><%=quantity%></td>
                        <td><%=amount%>&nbsp;<%=unit%></td>

                     </tr>
                    <%
                    }
                    else if(request.getParameter("division").equals("_AnaChem"))
                    {
                        inventorysystem.dao.Supply_AnaChem supplyList = (inventorysystem.dao.Supply_AnaChem)supplies.get(i);
                        String supply = supplyList.returnSupplyName();
                        int quantity = supplyList.returnSupplyQuantity();
                        String amount = supplyList.getAmount();
                        String unit = supplyList.getUnit();
                         %>
                    <tr>
                        <td><%=supply%></td>
                        <td><%=quantity%></td>
                        <td><%=amount%>&nbsp;<%=unit%></td>

                     </tr>
                    <%
                    }
                    else if(request.getParameter("division").equals("_OrgChem"))
                    {
                        inventorysystem.dao.Supply_OrgChem supplyList = (inventorysystem.dao.Supply_OrgChem)supplies.get(i);
                        String supply = supplyList.returnSupplyName();
                        int quantity = supplyList.returnSupplyQuantity();
                        String amount = supplyList.getAmount();
                        String unit = supplyList.getUnit();
                         %>
                    <tr>
                        <td><%=supply%></td>
                        <td><%=quantity%></td>
                        <td><%=amount%>&nbsp;<%=unit%></td>

                     </tr>
                    <%
                    }


                    }

%>
</table>
<%}%>
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
   loggedin= (String) session.getAttribute("username");
   if(loggedin==null) loggedin="Guest";
%>
        <%stat=(String) session.getAttribute("status");
          if(stat.equals("admin")){
       %>
                                                            <li><!-- jsp:include page="DisplayAdminNotificationView.jsp" /--></li>
                                                            <%} else{%>
                                                            <li><!-- jsp:include page="DisplayNotificationView.jsp" /--></li>
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

