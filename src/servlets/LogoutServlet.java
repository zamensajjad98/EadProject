package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LogoutServlet")
public class LogoutServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        /*Cookie loginCooke = null;
        Cookie[] cookies = request.getCookies();
        if(cookies!=null){
            for(Cookie cookie : cookies){
                if(cookie.getName().equals("email")){
                    loginCooke = cookie;
                    break;
                }
            }
        }
        if(loginCooke!=null){
            loginCooke.setMaxAge(0);
            response.addCookie(loginCooke);
            response.sendRedirect("index.jsp");
        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

        HttpSession session = request.getSession(false);
        if(session!=null){
            session.invalidate();
            response.sendRedirect("login.jsp");
        }
    }
}
