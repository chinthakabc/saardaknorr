<%
    String confirm=(String)request.getParameter("confirm");
    if(confirm.equals("Yes")){
        String user=(String)session.getAttribute("user_name");
        int id=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
        String supplyType=(String)request.getParameter("sname");
        String supplyName=(String)request.getParameter("supply_type");
        String supplyQuantity=(String)request.getParameter("quantity");
        String supplyPrice=(String)request.getParameter("price");
        java.util.Date date=new java.util.Date();
        String dt= date.toString();
        boolean con1=inventorysystem.dao.ORFPeer.addORF(id, dt);
        if(con1==true){
            int orfID=inventorysystem.dao.ORFPeer.retrieveORF(dt,id).getORF_ID();
            boolean con2=inventorysystem.dao.ORF_SupplyPeer.addORFSupply(orfID,id, supplyType, supplyName, supplyQuantity, supplyPrice);
            if(con2==true){
                %><center>Successfully Issued.<br/></center>
                <jsp:include page="IssueORFView.jsp"/><%
            }
            else{
                %><center>Failed to Issue ORF.2<br/></center>
                <jsp:include page="IssueORFView.jsp"/><%
            }
        }else{
            %><center>Failed to Issue ORF.1<br/></center>
            <jsp:include page="IssueORFView.jsp"/><%
        }
   }else{
        %><jsp:forward page="main.jsp"/><%
   }
%>