package com.myapp.sevlet;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/StudentServlet")
public class StudentServlet  extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        //super.doGet(req, resp);
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("<html><body>");
        out.println("Student is Confirmed : "+req.getParameter("firstName") +" "+req.getParameter("lastName"));
        out.println("</body></html>");
    }
}
