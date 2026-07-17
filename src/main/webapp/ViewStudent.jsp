<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List" %>
    <%@page import="model.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Student</title>
</head>
<body>
<h2 aligen="center">Student</h2>
<table border="1" aligen="center">
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Course</th>
<th>Marks</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<%
 List<Student> list =(List<Student>)request.getAttribute("studentList");
for(Student s:list){
	
	
%>
<tr>
<td><%=s.getId() %></td>
<td><%=s.getName() %></td>
<td><%=s.getEmail() %></td>
<td><%=s.getCourse() %></td>
<td><%=s.getMarks() %></td>
<td>
<a href="editStudent.jsp?id=<%=s.getId() %>">Edit</a></td>
<td>
<a href="deleteStudent?id=<%=s.getId() %>">Delete</a></td>
</tr>
<%
}
%>



</table>
</body>
</html>