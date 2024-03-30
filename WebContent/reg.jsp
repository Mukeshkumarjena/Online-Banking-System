<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*"%>
    <%@ page import ="oracle.jdbc.driver.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String s1=request.getParameter("Name");
String s2=request.getParameter("FName");
String s3=request.getParameter("DOB");
String s4=request.getParameter("Gender");
String s5=request.getParameter("MobileNo");
String s6=request.getParameter("Email");
String s7=request.getParameter("MaritalStatus");
String s8=request.getParameter("Address");
String s9=request.getParameter("State");
String s10=request.getParameter("Pincode");
String s11=request.getParameter("Password");


int k=0;

try
{
	// to load and register the driver
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	//Establish the Connection
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","oracle");
	
	//Create the statement object
    PreparedStatement ps=con.prepareStatement("insert into ACCOUNTDETAIL values(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,s1);
	ps.setString(2,s2);
	ps.setString(3,s3);
	ps.setString(4,s4);
	ps.setString(5,s5);
	ps.setString(6,s6);
	ps.setString(7,s7);
	ps.setString(8,s8);
    ps.setString(9,s9);
    ps.setString(10,s10);
    ps.setString(11,s11);

    //Execute the query
	k=ps.executeUpdate();
	
	if(k>0)
	{
		response.sendRedirect("reg.html");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>