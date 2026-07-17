<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.StudentDAO" %>
    <%@page import="model.Student" %>
<%
 int id = Integer.parseInt(request.getParameter("id"));
StudentDAO dao= new StudentDAO();
Student student =dao.getStudentById(id);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Student</title>
</head>
<body>
<h2 align="center">Update Student</h2>
<font action="updateStudent" method="post">
<input type="hidden" name="id" value="<%=student.getId() %>">
<table align="center">
<tr>
<td>Name</td>
<td>
<input type="text" name="name" value="<%=student.getName() %>">
</td>
</tr>
<tr>
<td>Email</td>
<td>
<input type="email" name="name" value="<%=student.getEmail() %>">
</td>
</tr>
<tr>
<td>Course</td>
<td>
<input type="text" name="name" value="<%=student.getCourse() %>">
</td>
</tr>
<tr>
<td>Marks</td>
<td>
<input type="number" step="0.01" name="marks" value="<%=student.getMarks() %>">
</td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="update">
</td>
</tr>
</table>
</font>

</body>
</html>