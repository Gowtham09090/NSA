<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<style>
table {
    width: 80%;
    margin: 30px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    }
th, td {
    border: 1px solid #333;
    padding: 15px;
    text-align: left;
    font-weight: 400;
}

th {
    background-color: grey;
    color: #fff;
    font-weight: 600;
    text-transform: uppercase;
}

.center {
    text-align: center;
}

#print {
    margin: 30px auto;
    background-color: #fff;
    padding: 30px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    max-width: 800px;
}
</style>
</head>
<body>
	<%
	String fn = request.getParameter("fname");
	String ln = request.getParameter("lname");
	String gender = request.getParameter("gender");
	String addr = request.getParameter("address");
	String city = request.getParameter("city");
	String pn = request.getParameter("phone");
	String val = request.getParameter("val");
	String ld = request.getParameter("load");

	%>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/NSA","root","root");
	String sql = "insert into DATA(fn,ln,gender,addr,city,pn,val,ld) values(?,?,?,?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1,fn);
	ps.setString(2,ln);
	ps.setString(3,gender);
	ps.setString(4,addr);
	ps.setString(5,city);
	ps.setString(6,pn);
	ps.setString(7,val);
	ps.setString(8,ld);
	ps.executeUpdate();
	%>
	<div id="message" style="color:green;font-size: 19px;text-align:center;">
		The Form has been Submitted
	</div><br>
	<div id="print">
        <h1 style="text-align:center">Your Details</h1>
        <table class="center">
            <tr>
                <th>Field</th>
                <th>Value</th>
            </tr>
            <tr>
                <td><b>First Name</b></td>
                <td><%= fn %></td>
            </tr>
            <tr>
                <td><b>Last Name</b></td>
                <td><%= ln %></td>
            </tr>
            <tr>
                <td><b>Gender</b></td>
                <td><%= gender %></td>
            </tr>
            <tr>
                <td><b>Address</b></td>
                <td><%= addr %></td>
            </tr>
            <tr>
                <td><b>City</b></td>
                <td><%= city %></td>
            </tr>
            <tr>
                <td><b>Phone Number</b></td>
                <td><%= pn %></td>
            </tr>
            <tr>
                <td><b>Load Value</b></td>
                <td><%= val %><%= ld %></td>
            </tr>
        </table>
    </div>
</body>
</html>