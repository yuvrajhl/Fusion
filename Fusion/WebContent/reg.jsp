<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>atozknowledge.com demo Regjsp</title>
</head>
<style type="text/css">
body {
	background-color: #f4f4f4;
	color: #5a5656;
	font-family: 'Open Sans', Arial, Helvetica, sans-serif;
	font-size: 16px;
	line-height: 1.5em;
}

a {
	text-decoration: none;
}

h1 {
	font-size: 1em;
}

h1, p {
	margin-bottom: 10px;
}

strong {
	font-weight: bold;
}

.uppercase {
	text-transform: uppercase;
}

/* ---------- LOGIN ---------- */
#login {
	margin: 50px auto;
	width: 300px;
}

form fieldset input[type="text"], input[type="password"] {
	background-color: #e5e5e5;
	border: none;
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	color: #5a5656;
	font-family: 'Open Sans', Arial, Helvetica, sans-serif;
	font-size: 14px;
	height: 50px;
	outline: none;
	padding: 0px 10px;
	width: 280px;
	-webkit-appearance: none;
}

form fieldset input[type="submit"] {
	background-color: #008dde;
	border: none;
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	color: #f4f4f4;
	cursor: pointer;
	font-family: 'Open Sans', Arial, Helvetica, sans-serif;
	height: 50px;
	text-transform: uppercase;
	width: 300px;
	-webkit-appearance: none;
}

form fieldset a {
	color: #5a5656;
	font-size: 10px;
}

form fieldset a:hover {
	text-decoration: underline;
}

.btn-round {
	background-color: #5a5656;
	border-radius: 50%;
	-moz-border-radius: 50%;
	-webkit-border-radius: 50%;
	color: #f4f4f4;
	display: block;
	font-size: 12px;
	height: 50px;
	line-height: 50px;
	margin: 30px 125px;
	text-align: center;
	text-transform: uppercase;
	width: 50px;
}

.twitter {
	background-color: #1bb2e9;
	border: none;
	border-radius: 0px 3px 3px 0px;
	-moz-border-radius: 0px 3px 3px 0px;
	-webkit-border-radius: 0px 3px 3px 0px;
	color: #f4f4f4;
	cursor: pointer;
	height: 50px;
	text-transform: uppercase;
	text-align: center;
	width: 300PX;
}
</style>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.io.*"%>
	<%
		String Formno = request.getParameter("Formno.");
		session.putValue("Formno.", Formno);
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String dor = request.getParameter("dor");
		String dod = request.getParameter("dod");
		String lenght = request.getParameter("lenght");
		String sleeve = request.getParameter("sleeve");
		String neck = request.getParameter("neck");
		String special = request.getParameter("special");

		//
		//
		//
		//BODY DETAILS IN BRIEF
		//
		//
		//
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
		String Fshoulderslope = request.getParameter("Front Shoulder Slope");
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
		String Bracupsize = request.getParameter("BraCupSize");
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

		//
		//code for data update in database
		//

		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root",
				"VMware1!");
		Statement st = con.createStatement();

		//
		//update in customer detail
		//
		int i = st.executeUpdate("insert into  customerdetail values('" + Formno + "','" + password + "','" + email
				+ "','" + name + "','" + contact + "','" + dor + "','" + dod + "','" + lenght + "','" + sleeve
				+ "','" + neck + "','" + special + "')");

		out.println("Welcome your registration id is :  " + Formno);
		//
		//update in customer measurement
		//

		int m = st.executeUpdate("insert into  contactmeasuremnt values('" + email + "','" + lenght + "','" + sleeve
				+ "','" + neck + "','" + special + "')");

		//
		//update in customer brief measurement
		//
		try {
			int B = st.executeUpdate("insert into  briefmeasurements values('" + email + "','" + Tlength + "','"
					+ Bcircum + "','" + Lprefer + "','" + Length + "','" + Chestcircum + "','" + Crotchl + "','"
					+ Belt + "','" + Bshoulderw + "','" + Fulllen + "','" + Poncha + "','" + Fshoulderw + "','"
					+ Fshoulderslope + "','" + Thighcircumr + "','" + Thighcircuml + "','" + Waist + "','"
					+ Kneecircumr + "','" + Kneecircuml + "','" + Hipcircum + "','" + Height + "','" + Calfcircumr
					+ "','" + Calfcircuml + "','" + Chak + "','" + Bracupsize + "','" + Ankler
					+ "','" + Anklel + "','" + Ghera + "','" + Weight + "','" + Frontneck + "','" + Backneck + "','"
					+ Sleevelen + "','" + Sleevecircum + "','" + Centrebacklen + "','" + CentreFrontlen + "','"
					+ Neckcircum + "','" + Armholecircum + "')");

		} catch (Exception ex) {
			ex.getMessage();
		}

		File fl = new File("C:\'" + email + "'.txt");
		fl.createNewFile();

		FileWriter fw = new FileWriter(fl);
		fw.write("----------Subscription Slip-------");
		fw.write(System.getProperty("line.separator"));

		fw.write("-----------------------------------");
		fw.write(System.getProperty("line.separator"));
		fw.write("Your Username is :" + name);
		fw.write(System.getProperty("line.separator"));
		fw.write("Your contact is :" + contact);
		fw.write(System.getProperty("line.separator"));
		fw.write("Your email is :" + email);
		fw.write(System.getProperty("line.separator"));
		fw.write("Your password is :" + password);
		fw.write(System.getProperty("line.separator"));
		fw.write("Your id is :" + Formno);
		fw.write(System.getProperty("line.separator"));
		fw.write("-----------------------------------");
		fw.close();
	%>
	<br />
	<br />

	<form action="Login.html">

		<center>
			<input class="twitter" type="submit" value="Login"><br>
		</center>
	</form>
	<br />
	<br />

	<form action="index.html">
		<center>

			<input class="twitter" type="submit" value="Home Page"><br>
		</center>
	</form>
</body>
</html>