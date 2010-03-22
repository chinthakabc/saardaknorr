<%

java.util.List systemLog = inventorysystem.dao.System_LogPeer.retrieveSystemLog();

if(systemLog.isEmpty()){

%>
    <br/>
    <center><h2>There are no system log files available</h2></center>
<%
}
else
{
  String userName = "";
  String supplyName = "";

%>
<center><h2>System Log</h2></center>
<br/>
<form method="post" action="SystemLogView.jsp">

<b>Date&nbsp;</b>
<select name=start"month" >
     <option value="novalue">[Month]</option>
     <option value="Jan">January</option>
     <option value="Feb">February</option>
     <option value="Mar">March</option>
     <option value="Apr">April</option>
     <option value="May">May</option>
     <option value="Jun">June</option>
     <option value="Jul">July</option>
     <option value="Aug">August</option>
     <option value="Sep">September</option>
     <option value="Oct">October</option>
     <option value="Nov">November</option>
     <option value="Dec">December</option>
</select>
<select name="startyear">
    <option value="novalue">[Year]</option>
    <option value="2010">2010</option>
    <option value="2011">2011</option>
    <option value="2012">2012</option>
    <option value="2013">2013</option>
    <option value="2014">2014</option>
    <option value="2015">2015</option>
    <option value="2016">2016</option>
    <option value="2017">2017</option>
    <option value="2018">2018</option>
    <option value="2019">2019</option>
    <option value="2020">2020</option>
</select><input type="submit" value="Go!">
</form>
<br/><br/><br/>
<table border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td><b>User Name</b></td>
        <td><b>Action</b></td>
        <td><b>Notes</b></td>
        <td><b>Previous Value</b></td>
        <td><b>Current Value</b></td>
        <td><b>Division</b></td>
        <td><b>Date</b></td>
    </tr>
    <center>
    <%

    for(int i=0; i<systemLog.size(); i++){
        inventorysystem.dao.System_Log logList = (inventorysystem.dao.System_Log)systemLog.get(i);

        int user = logList.getUser_ID();

        java.util.List allUsers = inventorysystem.dao.UserPeer.retrieveAllUsers();
        for(int j=0; j<allUsers.size(); j++)
        {
            inventorysystem.dao.User userInfo = (inventorysystem.dao.User)allUsers.get(j);
            int userid = userInfo.getUser_ID();

            if(userid==user)
            {
              userName = userInfo.getFirstName()+" "+userInfo.getLastName();
            }
        }



        String action = logList.getAction();
        int prev_value = logList.getPrevious_Value();
        int curr_value = logList.getCurrent_Value();
        String notes = logList.getNotes();
        String location = logList.getLocation();
        String date = logList.getDate();
        %>
        <tr>
            <td><%=userName%></td>
            <td><%=action%></td>
            <td><%=notes%></td>
            <td><%=prev_value%></td>
            <td><%=curr_value%></td>
            <td><%=location%></td>
            <td><%=date%></td>
        </tr>


    <%
    }//end ng brace for loop
  }
%>
    </center>
    
</table>