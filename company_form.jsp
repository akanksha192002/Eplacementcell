<%--
    Document   : registration.jsp
    Created on : Feb 27, 2024, 5:25:53 PM
    Author     : DELL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <%
String c_n=request.getParameter("COMPANY_NAME");
if(c_n!=null){
String date=request.getParameter("DATE");

try{
   Class.forName("org.apache.derby.jdbc.ClientDriver");
   Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/company_name","root","root");
   Statement st = conn.createStatement();

   int i = st.executeUpdate("insert into ROOT.COMPANIES_DATA(COMPANY_NAME,DATE)values('"+c_n+"','"+date+"')");
   
   out.println("Record inserted successfully");
   conn.close() ;       
}

catch(Exception e){e.printStackTrace();out.print(e.getMessage());}
}

%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upcoming Companies</title>
    <style>
        
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 30px;
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #555; /* Text color for labels */
        }
         input[type="text"],
         input[type="email"],
         textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        textarea {
            height: 100px;
        }



        input[type="submit"] {
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <body style="background-image: url('https://tse4.mm.bing.net/th?id=OIP.GbMboU-krQvdIrfKgWpzXgHaFj&pid=Api&P=0&h=180'); background-size: cover; background-repeat: no-repeat;"></body>
    <h2>Upcoming Companies Form</h2>
    <form action="company_form.jsp" method="post">
        <label for="COMPANY_NAME">COMPANY_NAME:</label>
        <input type="text" id="COMPANY_NAME" name="COMPANY_NAME" required>
        
         <label for="DATE">DATE:</label>
        <input type="text" id="DATE" name="DATE" required>

       


        <input type="submit" value="Submit">
    </form>


</body>
</html>  
