<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*" %>
	<%
	String Tlength = request.getParameter("TopLength");
	session.putValue("TopLength", Tlength); 
	String Bcircum = request.getParameter("Dod");
	String Lprefer = request.getParameter("Lenght Preference");
	String Length = request.getParameter("Length");
	String Chestcircum = request.getParameter("Chest Circumference");
	String Crotchl = request.getParameter("Crotch Length");
	String Belt = request.getParameter("Belt");
	String Bshoulderw = request.getParameter("Back Shoulder Width");
	String Fulllen = request.getParameter("Full Length");
	String Poncha = request.getParameter("Poncha");
	String Fshoulderw = request.getParameter("Front Shoulder Width");
	String Fshoulderslope  = request.getParameter("Front Shoulder Slope");
	String Thighcircumr = request.getParameter("Thigh Circumference-R");
	String Thighcircuml = request.getParameter("Thigh Circumference-L");
	String Waist = request.getParameter("Waist");
	String Kneecircumr = request.getParameter("Knee Circumference-R");
	String Kneecircuml = request.getParameter("Knee Circumference-L");
	String Hipcircum = request.getParameter("Hip Circumference");
	String Height = request.getParameter("Height");
	String Calfcircumr = request.getParameter("Calf Circumference-R");
	String Calfcircuml = request.getParameter("Calf Circumference-L");
	String Chak = request.getParameter("Chak");
	String Bracupsize = request.getParameter("Bra Cup Size");
	String Ankler = request.getParameter("Ankle-R");
	String Anklel = request.getParameter("Ankle-L");
	String Ghera = request.getParameter("Ghera");
	String Weight = request.getParameter("Weight");
	String Frontneck = request.getParameter("Front Neck");
	String Backneck = request.getParameter("Back Neck");
	String Sleevelen = request.getParameter("Sleeve Length");
	String Sleevecircum = request.getParameter("Sleeve Circumference");
	String Centrebacklen = request.getParameter("Centre Back Length");
	String CentreFrontlen = request.getParameter("Centre Front Length");
	String Neckcircum = request.getParameter("Neck Circumference");
	String Armholecircum = request.getParameter("Arm Hole Circumference");
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root",
			"VMware1!");
	
	Statement state = con.createStatement();
	
	
	
	int i = state.executeUpdate("insert into  briefmeasurements values('" + Tlength + "','" + Bcircum + "','" + Lprefer + "','" + Length + "','" + Chestcircum + "','" + Crotchl + "','" + Belt + "','" + Bshoulderw
	+ "','" + Fulllen + "','" + Poncha + "','" + Fshoulderw + "','" + Fshoulderslope + "','" + Thighcircumr + "','" + Thighcircuml + "','" + Waist + "','" + Kneecircumr + "','" + Kneecircuml + "','"
	+ Hipcircum + "','" + Height + "','" + Calfcircumr + "','" + Calfcircuml + "','" + Chak + "','" + Frontneck + "','" + Bracupsize + "','" + Ankler + "','" + Anklel + "','" + Ghera + "','" + Weight 
	+ "','" + Frontneck + "','" + Backneck + "','" + Sleevelen + "','" + Sleevecircum + "','" + Centrebacklen + "','" + CentreFrontlen + "','" + Neckcircum + "','" + Armholecircum +"')");
	
	out.println("Welcome your registration id is :  ");		
	%>
	<form action="index.html">
<center>

			<input class="twitter" type="submit" value="Home Page"><br>
</center>
		</form>
</body>

</html>