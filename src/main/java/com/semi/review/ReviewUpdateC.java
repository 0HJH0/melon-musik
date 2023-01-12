package com.semi.review;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.semi.auth.Auth;
import com.semi.auth.AuthDAO;

@WebServlet("/ReviewUpdateC")
public class ReviewUpdateC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AuthDAO.loginCheck(request);		
		ReviewDAO.getReview3(request);
		
		request.setAttribute("contentPage", "jsp/review/review_update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AuthDAO.loginCheck(request);
		ReviewDAO.updateReview(request);
		ReviewDAO.getReview(request);
		HttpSession hs = request.getSession();
		Auth a =(Auth)hs.getAttribute("account");
		request.setAttribute("a", a);
		
		request.setAttribute("contentPage", "jsp/review/review_detail.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
