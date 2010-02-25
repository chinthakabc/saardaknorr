<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

   boolean url=inventorysystem.dao.User.contains(username,password);
   boolean v=inventorysystem.dao.User.checkIfValidInput(username, password);

   if(v==false){
       %>
       <jsp:include page="index.jsp"/>
       <center><br/>Please type a valid username or password.</center>
       <%
   }else if(url==true){
       //Starts the session
       if(username==null)username="guest";
       session.setAttribute( "username", inventorysystem.dao.UserPeer.retrieveUser(username).getFirstName());
       session.setAttribute( "user_name",username);
       session.setAttribute("status",inventorysystem.dao.UserPeer.retrieveUser(username).getType());
       request.getSession(true);
       //Redirects the page
       response.setStatus(301);
       response.setHeader( "Location", "http://localhost:8080/InventorySystem/main.jsp" );
       response.setHeader( "Connection", "close" );
   }else{
       %>
       <jsp:include page="index.jsp"/>
       <center><br/>Invalid username or password.</center>
       <%}
%>
