<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile JSP</title>
    </head>
    <body>
        <%
            try
            {
        String user=request.getParameter("txtUser");
        String pass=request.getParameter("txtPass");
                String driver="com.mysql.jdbc.Driver";
                Class.forName(driver);
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/loginDB","root","");
                Statement st=cn.createStatement();
                String query="select * from login where username='" + user + "' and password='" + pass + "'";
                ResultSet rs=st.executeQuery(query);
                if(rs.next())
                {
        %>
        <h1>Welcome!!</h1>
        <%
            }
                else
                {
            %>
            <h1>Invalid username or password!!</h1>
            <% }
            }
            catch(Exception e)
            {
                out.println(""+e.getMessage());
            }
%>
    </body>
</html>
