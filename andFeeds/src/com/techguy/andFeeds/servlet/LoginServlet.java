package com.techguy.andFeeds.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.techguy.andFeeds.DAO.UserDAO;
import com.techguy.andFeeds.entities.Message;
import com.techguy.andFeeds.entities.User;
import com.techguy.andFeeds.util.DbConnector;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		String eMail=request.getParameter("email");
		String pass=request.getParameter("password");
		
		UserDAO dao=new UserDAO(DbConnector.getConnection());
		HttpSession session=request.getSession();
		
		User user=dao.getUser(eMail, pass);
		if(user!=null)
			{
				session.setAttribute("user", user);
				response.sendRedirect("AdminLanding.jsp");
			}
		else {
			Message msg=new Message("Invalid credentials", "alert-danger");
			response.sendRedirect("Admin.jsp");
		}
		
			
		
		}
		catch (Exception e) {
			System.out.println("Login Failed");
			e.printStackTrace();
		}
	}

}
