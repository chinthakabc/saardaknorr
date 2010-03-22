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
                                       <%
    java.util.List supplies = inventorysystem.dao.SupplyPeer.retrieveAllSupplies();
%>
<center>
<h2>Issue Order Request Form</h2>
<br/>
<form method="post" action="IssueORFController.jsp">
    <table>
        <tr>
            <td>Quantity</td><td colspan="2">Unit Of Issue</td><td>Name</td><td>Price Per Unit</td><td>Estimated Cost</td>
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
        java.util.List allSupplies=inventorysystem.dao.SupplyPeer.retrieveAllSupplies();
        int total=0;
        for(i=1; i<11; i++){
        String s=request.getParameter("supplyname"+i);
        if(!(s.equals("novalue"))){%>
            <tr>
                <td><input type="text" name="quantity<%=i%>" onkeypress="return onlyNumbers();" maxlength="3" size="1" value="<%=request.getParameter("quantity"+i)%>"/></td>
                <td><input type="text" name="unitval<%=i%>" maxlength="2" size="1" onkeypress="return onlyNumbers();" value="<%=request.getParameter("unitval"+i)%>"/></td>
                <td><input type="text" name="unit<%=i%>" value="<%=request.getParameter("unit"+i)%>" size="2"/></td>
                <td><input type="text" name="supplyname<%=i%>" value="<%=request.getParameter("supplyname"+i)%>"/></td>
                <td><input type="text" name="price<%=i%>" maxlength="7" size="2" value="<%=request.getParameter("price"+i)%>" onkeypress="return onlyNumbers();"/></td>
                <%
                    int x=Integer.parseInt(request.getParameter("quantity"+i));
                    int y=Integer.parseInt(request.getParameter("price"+i));
                    total=total+(x*y);
                %>
                <td><input type="text" name="estimatedcost" size="2" readonly="true" value="<%=x*y%>"/></td>
                </tr>
                <input type="hidden" name="num" value="<%=i%>"/>
        <%}else{continue;}}%>
        <tr>
            <td colspan="5">GRAND TOTAL:</td>
            <td><%=total%></td>
        </tr>
    </table>
    <br/>
    Confirm ORF?<br/>
    <input type="submit" name="confirm" value="Yes"/>
    <input type="submit" name="confirm" value="No"/>
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
   loggedin= (String) session.getAttribute("username");
   if(loggedin==null) loggedin="Guest";
%>
        <%stat=(String) session.getAttribute("status");
          if(stat.equals("admin")){
       %>
                                                            <li><jsp:include page="DisplayAdminNotificationView.jsp" /></li>
                                                            <%} else{%>
                                                            <li><jsp:include page="DisplayNotificationView.jsp" /></li>
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
