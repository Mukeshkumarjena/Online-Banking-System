<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
    <%@ page import ="oracle.jdbc.driver.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    String user = request.getParameter("Email");    
    String pwd = request.getParameter("Password");
    try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
            "system", "oracle");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from registration where Email='" + user + "' and Password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", user);
        out.println("Login successful <a href='booking1.jsp'>click here to proceed</a>");
    } else {
        out.println("Invalid password <a href='login.html'>try again</a>");
    }
    }
    catch(Exception e){}
%>
</body>
</html>