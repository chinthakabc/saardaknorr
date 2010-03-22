
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
<form method="post" action="EditSupplyController.jsp">
    <table>
        <tr><td>Supply Name:</td><td><input type="text" name="sname" value="<%=request.getParameter("sname")%>" /></td></tr>
        <tr><td>Supply Type:</td><td><input type="text" name="type" value="<%=request.getParameter("type")%>" /></td></tr>
        <tr><td>Quantity:</td><td><input type="text" name="quantity" value="<%if(request.getParameter("quantity").equals(null)){out.print("N/A");}else{out.print(request.getParameter("quantity"));}%>" /></td></tr>
        <tr><td>Action Taken:</td>
            <td>
                <select name="action" >
                    <option value="novalue">[select one]</option>
                    <option value="added quantity">Added Quantity</option>
                    <option value="consumed">Consumed</option>
                    <option value="borrowed">Borrowed</option>
                    <option value="missing">Missing</option>
                    <option value="broken">Broken</option>
                </select>
            </td>
        </tr>
        <tr><td>Unit:</td><td><input type="text" name="amount" value="<%=request.getParameter("amount")%>" />
        <%
            String unit=request.getParameter("unit");
        %>
                 <select name="unit">
                   <%try{%>
                   <%
                        String novalue= "novalue";
                        if(unit == null || (unit.equals(novalue))){
                   %>
                   <option value="novalue" selected>[select one]</option>
                    <%}
                      }
                      catch(Exception e)
                      {%>
                      <option value="novalue">[select one]</option>
                      <%}%>

                      <%try{%>
                      <%
                        if(unit.equals("Gram/s")){
                   %>
                   <option value="Gram/s" selected>Gram/s</option>
                    <%}
                      }
                      catch(Exception e)
                      {%>
                      <option value="Gram/s" >Gram/s</option>
                    <%}%>

                    <%try{%>
                      <%
                        if(unit.equals("Kilogram/s")){
                   %>
                   <option value="Kilogram/s" selected>Kilogram/s</option>
                    <%}
                      }
                      catch(Exception e)
                      {%>
                      <option value="Kilogram/s" >Kilogram/s</option>
                    <%}%>

                    <%try{%>
                    <%
                        if(unit.equals("Milliliter/s")){
                   %>
                   <option value="Milliliter/s" selected>Milliliter/s</option>
                    <%}
                      }
                      catch(Exception e)
                      {%>
                      <option value="Milliliter/s">Milliliter/s</option>
                    <%}%>

                    <%try{%>
                    <%
                        if(unit.equals("Liter/s")){
                   %>
                   <option value="Liter/s" selected>Liters</option>
                    <%}
                      }
                      catch(Exception e)
                      {%>
                      <option value="Liter/s">Liters</option>
                    <%}%>

                    <%try{%>
                    <%
                        if(unit.equals("Gallon/s")){
                   %>
                   <option value="Gallon/s" selected>Gallon/s</option>
                    <%}
                      }
                      catch(Exception e)
                      {%>
                      <option value="Gallon/s">Gallon/s</option>
                    <%}%>

                </select>
        </td></tr>
        <tr><td>Location:</td><td>
        <%
            String location=request.getParameter("location");
        %>
            <select name="location">
                   <%
                        if(location == "novalue"){
                   %>
                   <option value="novalue" selected>[select one]</option>
                    <%}
                      else
                      {%>
                      <option value="novalue">[select one]</option>
                    <%}%>

                    <%
                        if(location.equals("General Chemistry and Chemical Education")){
                   %>
                   <option value="General Chemistry and Chemical Education" selected>General Chemistry and Chemical Education</option>
                    <%}
                      else
                      {%>
                      <option value="General Chemistry and Chemical Education">General Chemistry and Chemical Education</option>
                    <%}%>

                    <%
                        if(location.equals("Biochemistry and Agricultural Chemistry")){
                   %>
                   <option value="Biochemistry and Agricultural Chemistry" selected>Biochemistry and Agricultural Chemistry</option>
                    <%}
                      else
                      {%>
                      <option value="Biochemistry and Agricultural Chemistry">Biochemistry and Agricultural Chemistry</option>
                    <%}%>

                    <%
                        if(location.equals("Physical and Inorganic Chemistry")){
                   %>
                   <option value="Physical and Inorganic Chemistry" selected>Physical and Inorganic Chemistry</option>
                    <%}
                      else
                      {%>
                       <option value="Physical and Inorganic Chemistry">Physical and Inorganic Chemistry</option>
                    <%}%>

                    <%
                        if(location.equals("Analytical and Environmental Chemistry")){
                   %>
                   <option value="Analytical and Environmental Chemistry" selected>Analytical and Environmental Chemistry</option>
                    <%}
                      else
                      {%>
                       <option value="Analytical and Environmental Chemistry">Analytical and Environmental Chemistry</option>
                    <%}%>

                    <%
                        if(location.equals("Organic Chemistry and Natural Products")){
                   %>
                   <option value="Organic Chemistry and Natural Products" selected>Organic Chemistry and Natural Products</option>
                    <%}
                      else
                      {%>
                       <option value="Organic Chemistry and Natural Products">Organic Chemistry and Natural Products</option>
                    <%}%>

                    </select></td></tr>
    <br/>
    </table>
    <br/>
    Confirm Changes?
    <br/>
    <input type="submit" value="Yes"/>
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




