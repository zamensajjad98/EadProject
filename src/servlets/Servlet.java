package servlets;

import Dbconnection.DbConnection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "Servlet")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException

    {    String name=request.getParameter("myname");
        String  username=request.getParameter("myusername");
        String  password=request.getParameter("mypassword");
        String  dob=request.getParameter("mybirthdate");
        String emailaddress=request.getParameter("myemail");
        DbConnection dbconnection=new DbConnection();
        dbconnection.insertData(name,username,password,dob,emailaddress);

        response.sendRedirect("tweet.jsp");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("inserted");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //creating response object
        String name = request.getParameter("username");
        String pass = request.getParameter("password");

        DbConnection dbconnection = new DbConnection();
        int count = dbconnection.loginAuthentication(name,pass);
        if(count>0)
        {
            HttpSession session = request.getSession();
            session.setAttribute("username",name);
            session.setMaxInactiveInterval(30*60);
            response.sendRedirect("tweet.jsp");
        }
        else
        {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            PrintWriter out = response.getWriter();
            out.write("<p style='color:red;'>Invalid Username or Password</p>");
            rd.include(request,response);


        }




    }
}
