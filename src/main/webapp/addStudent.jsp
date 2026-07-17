<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Add Students</h2>
<form action="addstudent" method="post">
<table align="center">
<tr>
<td>Name</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="email" name="email"></td>
</tr>
<tr>
<td>Courses</td>
<td><input type="text" name="course"></td>
</tr>
<tr>
<td>marks</td>
<td><input type="number" step="0.01" name="marks"></td>
</tr>
<tr>
<td colspan="2" align="center" ></td>
<td><input type="submit" value="save Student"></td>
</tr>
</table>
</form>

</body>
</html>