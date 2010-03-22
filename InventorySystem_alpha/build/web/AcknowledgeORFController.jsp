<%
    String[] approved;
    approved = request.getParameterValues("pendingUsers");
    for(int i=0; i<approved.length;i++){
       if (approved[i] != null)
       {
           inventorysystem.dao.ORF_SupplyPeer.setORFSupplyAcknowledged(Integer.parseInt(approved[i]));
       }
   }

%><jsp:forward page="AcknowledgeORFView2.jsp"/>