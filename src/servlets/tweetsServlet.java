package servlets;

import Dbconnection.DbConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "tweetsServlet")
public class tweetsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String tweets=request.getParameter("tweets");
        DbConnection dbconnection=new DbConnection();
        dbconnection.inserttweets(tweets);
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("inserted");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DbConnection obj = new DbConnection();
        ResultSet result = obj.displayalltweets();
        PrintWriter out = response.getWriter();
        String r="<html><head></head><body> <table> <tr> <th>UserID</th> <th>tweets</th> <th>username</th>  </tr>";

        try {
            while (result.next()){
                r = r+"<tr><td>"+result.getString("id")+"</td>";
                r = r+"<td>"+result.getString("tweets")+"</td>";
                r = r+"<td>"+result.getString("username")+"</td>";

            }
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        r = r+"</table></body></html>";
        out.write(r+"");


        out.print("</table>");

    }
}
