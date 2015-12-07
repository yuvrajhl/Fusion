<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fusion reset password</title>
</head>
<style>
body {
	background-color: #F0F0F0;
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
	color: #FFFFFF;
	border: none;
	border-radius: 5px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	color: #5a5656;
	font-family: 'Open Sans', Arial, Helvetica, sans-serif;
	font-size: 14px;
	height: 50px;
	outline: none;
	padding: 5px 10px;
	width: 265px;
	-webkit-appearance: none;
}



 .a {
	color: #5a5656;
	font-size: 20px;
	text-decoration: underline;
}




.ButtonCode {
	background-color: #1bb2e9;
	border: none;
	border-radius: 0px 3px 3px 0px;
	-moz-border-radius: 0px 3px 3px 0px;
	-webkit-border-radius: 0px 3px 3px 0px;
	color: #f4f4f4;
	cursor: pointer;
	height: 40px;
	margin: 0px 15px;
	text-transform: uppercase;
	width: 200PX;
}
</style>
<body>
<div class="a">
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
		String formno = request.getParameter("formno");
		session.putValue("formno", formno);
		String email = request.getParameter("email");
		String contact = request.getParameter("Contact");
		String npassword = request.getParameter("password");
		Class.forName("com.mysql.jdbc.Driver");

		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root",
				"VMware1!");

		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery("SELECT * from customerdetail where formno='" + formno + "'");

		if (rs.next()) {
			if (rs.getString(1).equals(formno)) {
				
				if (rs.getString(3).equals(email)) {
					if (rs.getString(5).equals(contact)) {
						int pass = st.executeUpdate("update customerdetail set password='" + npassword
								+ "' where formno='" + formno + "'");
						out.println("Congratulations your password is been successfully updated");
					}else{
					out.println("Invalid details please  try again");
					}
				}else{
					out.println("Invalid details please  try again");
				}

			}else{
				out.println("Invalid details please  try again");
			}

		} else {
			out.println("Invalid details please  try again");

		}
	%>
	</div>
	<center>
	
<br><br><br>
		<form action="index.html">


			<input class="ButtonCode" type="submit" value="Home Page"><br>
			<br>

		</form>

		<form action="Login.html">


			<input class="ButtonCode" type="submit" value="Login"><br>
			<br>

		</form>
		<form action="Reg.html">


			<input class="ButtonCode" type="submit" value="Register now"><br>
			<br>

		</form>

	</center>


</body>
</html>