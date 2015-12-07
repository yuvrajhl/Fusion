<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login jsp</title>
</head>

<style type="text/css">
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
	width: 280px;
	-webkit-appearance: none;
}

form fieldset a {
	color: #5a5656;
	font-size: 20px;
}

form fieldset a:hover {
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
	height: 30px;
	text-transform: uppercase;
	width: 300PX;
}
</style>
<body>
	

		<%@ page import="java.sql.*"%>
		<%@ page import="javax.sql.*"%>
		<%
			String email = request.getParameter("username");
			session.putValue("username", email);
			String pwd = request.getParameter("password");
			Class.forName("com.mysql.jdbc.Driver");

			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root",
					"VMware1!");

			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery("SELECT * from customerdetail where email='" + email + "'");

			if (rs.next()) {
				if(rs.getString(3).equals(email)){
				if (rs.getString(2).equals(pwd)) {
					out.println("Welcome <h1> " + email+"</h1><br>");
					out.println("<form action='Logout.jsp'>");
					out.println("<input class='ButtonCode' type='submit' value='Logout'><br><br></form>");
					
				}
				 else {
						out.println("Invalid password try again");
						out.println("<h1>Try again!!!</h1>");
						out.println("<form action='login.html'>");
						out.println("<input class='ButtonCode' type='submit' value='Login'><br><br></form>");
				}
				} else {
					out.println("Invalid password try again");
					out.println("<h1>Try again!!!</h1>");
					out.println("<form action='login.html'>");
					out.println("<input class='ButtonCode' type='submit' value='Login'><br><br></form>");
				}
			} else{
				out.println("Invalid Username & Password try again");
				out.println("<h1>Try again!!!</h1>");
				out.println("<form action='login.html'>");
				out.println("<input class='ButtonCode' type='submit' value='Login'><br><br></form>");
			}
		%>
	

		<form action="index.html">


			<input class="ButtonCode" type="submit" value="Home Page"><br>
			<br>

		</form>

		


	




</body>
</html>