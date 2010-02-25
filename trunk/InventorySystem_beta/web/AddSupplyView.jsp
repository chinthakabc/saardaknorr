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
		<h1><span>UPLB Institute of Chemistry Inventory System</span></h1>
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
		&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;<img src="IC_Logo.png" height="80"></img>


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
                    <%
    java.util.List supplies = inventorysystem.dao.SupplyPeer.retrieveAllSupplies();
%>
<center>
<h2>Add Supply</h2>
<br/>
<form method="post" action="AddSupplyController.jsp">
    <table>
        <tr><td>Supply Name:</td><td><input type="text" name="sname"/><b>*</b></td></tr>
        <tr><td>Supply Type:</td><td><select name="supply_type" class="pretext2" id = "input2">
                    <option value="novalue">[select one]</option>
                    <option value="reagent">Reagent</option>
                    <option value="apparatus">Apparatus</option></select><b>*</b></td></tr>
        <tr><td>Quantity:</td><td><input type="text" name="quantity"/><b>*</b></td></tr>
        <tr><td>Source:</td><td><input type="text" name="source"/></td></tr>
        <<tr><td>Location:</td><td><select name="location" class="pretext2" id = "input2">
                    <option value="novalue">[select one]</option>
                    <option value="General Chemistry and Chemical Education">General Chemistry and Chemical Education</option>
                    <option value="Biochemistry and Agricultural Chemistry">Biochemistry and Agricultural Chemistry</option>
                    <option value="Physical and Inorganic Chemistry">Physical and Inorganic Chemistry</option>
                    <option value="Analytical and Environmental Chemistry">Analytical and Environmental Chemistry</option>
                    <option value="Organic Chemistry and Natural Products">Organic Chemistry and Natural Products</option></select><b>*</b></td></tr>
    <br/>
    </table>
    <b>*  required fields </b>
    <br/>
    <input type="submit" value="Add Supply"/>
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
                                                            <li><jsp:include page="NotificationView.jsp" /></li>
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
