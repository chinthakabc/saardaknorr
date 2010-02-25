
<%
    int counter = 0;

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String firstName = request.getParameter("fname");
    String middleName = request.getParameter("mname");
    String lastName = request.getParameter("lname");
    String employeeNumber= request.getParameter("empno");
    String division = request.getParameter("division");
    String contactNo = request.getParameter("contactno");
    String password2 = request.getParameter("password2");


    if (division.contentEquals("none")){
        %>

         Please choose your division.<br/>
        <% counter = 1;
    }
    if (password.isEmpty() || username. isEmpty() || password2.isEmpty() || contactNo.isEmpty() || employeeNumber.isEmpty() || firstName.isEmpty() || middleName.isEmpty() || lastName.isEmpty()){
        %>

        Please fill in the required fields. <br/>
        <% counter = 1;
    }
    if(!password.contentEquals(password2)){
       %>
        The passwords do not match<br/>
        <% counter = 1;
    }
    if(!firstName.matches("^[A-Z a-z]*$") || !middleName.matches("^[A-Z a-z]*$") || !lastName.matches("^[A-Z a-z]*$")){
        %>Name should only consist of letters or spaces
        <% counter = 1;
    }
    if(!employeeNumber.matches("[0-9]{9}") ){
        %>Employee Number should only consist of numbers<br/>
        <% counter = 1;
    }
    if((!contactNo.matches("[0-9]*"))){
        %>Contact Number should only consist of numbers<br/>
        <% counter = 1;
    }
    if (!username.matches("^[a-z 0-9]*$") ){
        %>Username should consist of letters and numbers<br/><%
        counter = 1;
    }

    if (counter == 1){
        %><jsp:include page="RegisterView.jsp">
          <jsp:param name="user_n" value="<%=username%>"/>
          <jsp:param name="first_n" value="<%=firstName%>"/>
          <jsp:param name="middle_n" value="<%=middleName%>"/>
          <jsp:param name="last_n" value="<%=lastName%>"/>
          <jsp:param name="empno" value="<%=employeeNumber%>"/>
          <jsp:param name="contactno" value="<%=contactNo%>"/>
          <jsp:param name="division" value="<%=division%>"/>

        </jsp:include>
        <% counter = 0;
    }
    else{
        boolean url=inventorysystem.dao.User.contains(username,password);
        if (url == true){
           %>
           User already exists<br/>
           <jsp:include page="RegisterView.jsp">
          <jsp:param name="user_n" value="<%=username%>"/>
          <jsp:param name="first_n" value="<%=firstName%>"/>
          <jsp:param name="middle_n" value="<%=middleName%>"/>
          <jsp:param name="last_n" value="<%=lastName%>"/>
          <jsp:param name="empno" value="<%=employeeNumber%>"/>
          <jsp:param name="contactno" value="<%=contactNo%>"/>
          <jsp:param name="division" value="<%=division%>"/>

        </jsp:include><%
        }
        else{
            inventorysystem.dao.UserPeer.createUser(username, password,firstName,middleName,lastName,employeeNumber,division,contactNo);
           
        }
    }
%>
