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
<<!-- start header -->
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
                     <p align="right">
					<a href="index.jsp"><img src="Previous.png" height="35" title="Back"></img></a>
					</p>

			  <form action="RegisterController.jsp" method="POST">
        <%String retryfname, retrymname, retrylname, retrydivision, retrycontactno, retryusername, retryemployeeno;%>
        <%
        try{
            retryusername = request.getParameter("user_n");
            retryfname = request.getParameter("first_n");
            retrymname = request.getParameter("middle_n");
            retrylname = request.getParameter("last_n");
            retrydivision = request.getParameter("division");
            retrycontactno = request.getParameter("contactno");
            retryemployeeno = request.getParameter("empno");
        }
        catch(Exception e){
            retryusername = null;
            retryfname = null;
            retrymname = null;
            retrylname = null;
            retrydivision = null;
            retrycontactno = null;
            retryemployeeno = null;
        }

        if(retryusername == null){
            retryusername = " ";
        }
        if(retryfname ==  null){
             retryfname = " ";
        }
        if (retrymname == null){
            retrymname = " ";
        }
        if (retrylname == null){
            retrylname = " ";
        }
        if (retrycontactno == null){
            retrycontactno = " ";
        }
        if (retryemployeeno == null){
            retryemployeeno = " ";
        }
%>




        <h3>Please fill out the form below. Asterisks indicate required fields.</h3>

        Name* <br/>
        <table>
            <tr>
                <td><input type ="text" id="fname" name="fname" maxlength="30" value="<%=retryfname%>"/></td>
                <td><input type ="text" id="mname" name="mname" maxlength ="30" value="<%=retrymname%>"/></td>
                <td><input type ="text" id="lname" name="lname" maxlength ="30" value="<%=retryfname%>"/></td>
            </tr>
            <tr>
                <td>First Name</td>
                <td>Middle Name</td>
                <td>Last Name</td>

            </tr>
        </table>
        <br/>
        Employee No*: <input type ="text" id="empno" name="empno" maxlength="9" value="<%=retryemployeeno%>"/> <br/>
        Division*:
        <select name ="division">
            <option value="none">&lt;NONE></option>
            <option value="genchem">General Chemistry and Chemical Education Division</option>
            <option value="biochem">Biochemistry and Agricultural Chemistry Division</option>
            <option value="phychem">Physical and Inorganic Chemistry Division</option>f
            <option value="anachem">Analytical and Environmental Chemistry Division</option>
            <option value="orgchem">Organic Chemistry and Natural Products Division</option>
        </select><br/>
        Contact Number*: <input type="text" id="contactno" name="contactno" value="<%=retrycontactno%>"/><br/>
        <br/>
        The following will be required when logging in.<br/>

        Username*: <input type="text" id="username" name="username" maxlength ="30" value="<%=retryusername%>"/> <br/>
        Password*: <input type="password" id="password" name="password" maxlength ="10"/> <br/>
        Confirm Password*: <input type="password" id="password2" name="password2" size ="10"/><br/>

        <input type="submit" value="Submit" />
    </form>
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


