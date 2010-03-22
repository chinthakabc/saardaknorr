<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@page contentType="text/html" import="java.util.*" %>
<title>Institute of Chemistry Laboratory Supplies Inventory System<</title>
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
			<ul>
				<li>
					<h2>Login</h2>
					<ul>
					<li>
						<%session.invalidate();%>
<html>
    <body>
        <form name="example" action="LoginController.jsp" method="POST">
            Username: <input type="text" name="username" /><br/>
            Password: <input type="password" name="password"/><br/>
            <input type="submit"/>
        </form>
    </body>
</html>
					</li>	
					</ul>
				</li>
			</ul>
<ul><li><h2>Register</h2>
    <ul><li>
            <a href="RegisterView.jsp">Create an Account</a>
        </li></ul>
        </li></ul>

		</div>

		<!-- start content -->
		<div id="content">
                    <center><img src="up100logo.png" height="250"></img></center>
			<div><br/></div>
			<div class="post">
				<h1 class="title"><a href="#">Welcome to Our Website!</a></h1>
				<p class="byline"><small>Please login to use the site's features.</small></p>
				<div class="entry">
					<p><strong>UPLB Institute of Chemistry Inventory System</strong> is a database system that will help the Institute of Chemistry, University of the Philippines, Los Baños to keep track of their laboratory supplies and materials. This is to aid the need of having an automated inventory software that will allow the Institute to easily gather information pertaining to their resources.</p>
					
				</div>
			</div>

			
		</div>
		<!-- end content -->
		<!-- start sidebars -->
		<div id="sidebar2" class="sidebar">
			<ul>
						
				<li>
					<h2>Calendar</h2>
                                        <% Calendar test =Calendar.getInstance();
                                            
                                         %>
                                         <%=test.getTime()%>
                                         
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


