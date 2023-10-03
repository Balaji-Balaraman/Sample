package com.myapp.sevlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/StudentDataServlet")
public class StudentDataServlet extends HttpServlet
{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//    super.doGet(req, resp);
    // get the student data from helper class(model)
    List<Student1> student1s= StudentData.getStudents1();
    // add students to request object
    req.setAttribute("Student_list",student1s);
    // get request  dispatcher
    RequestDispatcher dispatcher= req.getRequestDispatcher("/view_students_two.jsp");
    // now forward to Jsp
    dispatcher.forward(req,resp);

}
}
