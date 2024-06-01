<%-- 
    Document   : ViewData
    Created on : Mar 5, 2024, 2:38:23 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Result</title>
</head>
<body>
    <h1>Upcoming Company Details</h1>
<center>
     <table border="1">
                    <tr>
                <th>Company Name</th>
                <th>Date</th>
               
                  
                    </tr>
    <%
        String studentId = request.getParameter("STUDENT_ID");
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/company_name", "root", "root");
            //String sql = "select * from ROOT.STUDENT_DATA WHERE STUDENT_ID='"+studentId+"'";
            Statement stmt = conn.createStatement();
            //ResultSet rs = stmt.executeQuery("select * from ROOT.STUDENT_DATA");
//            ResultSet rs = stmt.executeQuery("SELECT * FROM ROOT.STUDENT_DATA ORDER BY STUDENT_NAME");
            ResultSet rs = stmt.executeQuery("select * from ROOT.COMPANIES_DATA");


            while(rs.next()) {
    %>
               
                    <tr>
                        <td><%=rs.getString("COMPANY_NAME")%></td>
                        <td><%=rs.getString("DATE")%></td>
                    </tr>
               
    <%
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();out.print(e.getMessage()) ;}
    %>
 </table>
</center>
</body>

</html>
