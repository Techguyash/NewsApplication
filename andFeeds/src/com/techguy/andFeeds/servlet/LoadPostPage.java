package com.techguy.andFeeds.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.techguy.andFeeds.DAO.NewspostDAO;
import com.techguy.andFeeds.entities.NewsPost;
import com.techguy.andFeeds.util.DbConnector;

@WebServlet("/LoadPostPage")
public class LoadPostPage extends HttpServlet
	{
		private static final long serialVersionUID = 1L;

		public LoadPostPage()
			{
				super();
			}

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException
			{
				int page=1;
				int postPerPage=8;
				if(request.getParameter("page")!=null)
					page=Integer.parseInt(request.getParameter("page"));
				NewspostDAO dao=new NewspostDAO(DbConnector.getConnection());
				List<NewsPost> list=dao.getAllPost((page-1)*postPerPage,postPerPage);
				int recordsReceived=dao.getNoOfRecords();
				int TotalPages=(int)Math.ceil(recordsReceived*1.0/postPerPage);
				request.setAttribute("postList", list);
				request.setAttribute("totalPages", TotalPages);
				request.setAttribute("currentpage", page);
				RequestDispatcher dispatch=request.getRequestDispatcher("Index.jsp");
				dispatch.forward(request, response);
			}

	}
