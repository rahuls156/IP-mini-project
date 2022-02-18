<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    try {
           
Class.forName("com.mysql.jdbc.Driver");
    
Connection con = DriverManager.getConnection("jdbc:mysql:// localhost:3306/library","root","dpk");
 
PreparedStatement st = con.prepareStatement("insert into lib values(?,?,?,?,?);");
 
st.setString(1, String.valueOf(request.getParameter("sno")));
        
st.setString(2, String.valueOf(request.getParameter("bookname")));
          
st.setString(3, String.valueOf(request.getParameter("available")));
  
st.setString(4, String.valueOf(request.getParameter("author")));
       
st.setString(5,String.valueOf(request.getParameter("cost")));
  
st.executeUpdate();
        
st.close();

con.close();

response.sendRedirect("ViewAll.jsp");
     
   }
 catch (Exception e) 
{

e.printStackTrace();

}
%>`

<!DOCTYPE html>

<html>
 
<head>
 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
 </head>
  
<body bgcolor = red>
        
   
</body>

</html>
