<% if(request.getParameter("button").equals("Approve")){
    String[] approved;
    approved = request.getParameterValues("pendingUsers");
    for(int i=0; i<approved.length;i++){
       if (approved[i] != null)
       {
           inventorysystem.dao.UserPeer.activateUser(approved[i]);
       }
   }
}
else{
    String[] rejected;
    rejected = request.getParameterValues("pendingUsers");
   for(int i=0; i<rejected.length;i++){
       if (rejected[i] != null)
       {
           inventorysystem.dao.UserPeer.deleteUser(rejected[i]);
       }
   }
}
%><jsp:forward page="ApproveAccountView.jsp"/>