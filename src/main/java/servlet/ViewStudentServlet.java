package servlet;

import java.io.IOException;
import java.util.List;

import dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;


@WebServlet("/viewStudent")
public class ViewStudentServlet extends HttpServlet {

	public  static final long serialVersionID=1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		
		/*String name=request.getParameter("name");
		String email=request.getParameter("email");
		String course =request.getParameter("course");
		double marks =Double.parseDouble(request.getParameter("marks"));
		
		
		Student student =new Student();
		student.setName(name);
		student.setEmail(email);
		student.setCourse(course);
		student.setMarks(marks);
		
		
		StudentDAO dao =new StudentDAO();
		
		boolean status=dao.addStudent(student);
		if(status) {
			response.sendRedirect("ViewStudent");
		}
		else {
			response.getWriter().println("Student not added");
		}*/
		
		StudentDAO dao = new StudentDAO();
		
		List<Student> list = dao.getAllStudents();
		request.setAttribute("studentlist", list);
		
		request.getRequestDispatcher("viewStudent.jsp").forward(request, response);
		
		
	}
}
