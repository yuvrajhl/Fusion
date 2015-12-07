<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<style type="text/css">
body {
	background-color: #F0F0F0;
	color: #5a5656;
	font-family: 'Open Sans', Arial, Helvetica, sans-serif;
	font-size: 40px;
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
	margin: 500px auto;
	width: 300px;
}









.ButtonCode {
	background-color: #1bb2e9;
	border: none;
	border-radius: 0px 3px 3px 0px;
	-moz-border-radius: 0px 3px 3px 0px;
	-webkit-border-radius: 0px 3px 3px 0px;
	color: #f4f4f4;
	cursor: pointer;
	margin: 20px 70px;
	height: 35px;
	text-transform: uppercase;
	width: 200PX;
}
</style>
<body>

	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
		String email = request.getParameter("search");
		session.putValue("search", email);

		Class.forName("com.mysql.jdbc.Driver");

		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root",
				"VMware1!");

		Statement st = con.createStatement();

		ResultSet rs = st.executeQuery("SELECT * from customerdetail where email='" + email + "'");

		if (rs.next()) {
			if (rs.getString("email") != null) {
				String name = rs.getString(4);

				String Contact = rs.getString("contactdetail");
				String Formno = rs.getString("formno");
				out.print("Name  : " + name+"<br>");

				out.println("Contact  : " + Contact+"<br>");

				out.print("Formno.  : " + Formno+"<br>");
			} else {
				out.println("Invalid password try again");
			}

		} else {
			out.println("Invalid username please try again");
		}
	%>
	
	<form action="index.html">


		<input class="ButtonCode" type="submit" value="Home Page">
		<br>

	</form>
	<form action="Search.html">


		<input class="ButtonCode" type="submit" value="Search Username"><br>
		<br>

	</form>
</body>
</html>