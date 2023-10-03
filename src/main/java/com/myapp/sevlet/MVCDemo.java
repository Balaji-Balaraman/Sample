package com.myapp.sevlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/mvcdemo")
public class MVCDemo extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doGet(req, resp);
        String[] students={"aaba","akash","dev","vikram","kamal"};
        req.setAttribute("Student_list",students);
        RequestDispatcher dispatcher=req.getRequestDispatcher("/view_students.jsp");
        dispatcher.forward(req,resp);
    }
}
