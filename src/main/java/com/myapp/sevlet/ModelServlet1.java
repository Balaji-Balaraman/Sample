package com.myapp.sevlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Test1")
public class ModelServlet1 extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        //super.doGet(req, resp);
        //set the content type
        resp.setContentType("text/html");
        //get the printWriter
        PrintWriter out=resp.getWriter();
        //generate HTML content
        out.println("<html> <body>");
        out.println("<h3>Hello World </h3>");
        out.println("<hr>");
        out.println("Time on the Server is: "+new java.util.Date());
        out.println("</html> </body>");

    }
}
