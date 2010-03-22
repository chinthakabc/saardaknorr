<%
    String confirm=(String)request.getParameter("confirm");
    if(confirm.equals("Yes")){
        String user=(String)session.getAttribute("user_name");
        int id=inventorysystem.dao.UserPeer.retrieveUser(user).getUser_ID();
        java.util.Date date=new java.util.Date();
        String dt= date.toString();
        boolean con1=inventorysystem.dao.ORFPeer.addORF(id, dt);
        if(con1==true){
            int orfID=inventorysystem.dao.ORFPeer.retrieveORF(dt,id).getORF_ID();
            boolean con2= false;
            for(int i=1; i<11; i++){
                String s=request.getParameter("supplyname"+i);
                if(!(s==null)){
                    out.println(i);
                    String supplyName=(String)request.getParameter("supplyname"+i);
                    String supplyQuantity=(String)request.getParameter("quantity"+i);
                    String supplyPrice=(String)request.getParameter("price"+i);
                    String supplyAmount=(String)request.getParameter("unitval"+i);
                    String supplyUnit=(String)request.getParameter("unit"+i);
                    con2 = inventorysystem.dao.ORF_SupplyPeer.addORFSupply(orfID, id, supplyName, supplyQuantity, supplyAmount, supplyUnit, supplyPrice);
                }

            }
            
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