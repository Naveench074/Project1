package servlet;

import java.io.IOException;
import java.net.http.HttpResponse;



import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;


@WebServlet("/updatestudent")
public class UpdateStudentServlet extends HttpServlet{

	public static final long serialVersionID=1L;
	
	protected void doPost(HttpServletRequest request,HttpServletResponse repsonse)throws ServletException,IOException{
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String email =request.getParameter("email");
		String course = request.getParameter("course");
		double marks = Double.parseDouble(request.getParameter("marks"));
		
		Student student = new Student();
		
		student.setName(name);
		student.setEmail(email);
		student.setCourse(course);
		student.setMarks(marks);
		
		StudentDAO dao = new StudentDAO();
		dao.updateStudent(student);
		repsonse.sendRedirect("viewStudent");
		
		
		
		
		
				
	}
	
	
}
