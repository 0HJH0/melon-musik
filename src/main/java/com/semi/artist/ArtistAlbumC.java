package com.semi.artist;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.semi.auth.AuthDAO;
import com.semi.main.Crawler;

@WebServlet("/ArtistAlbumC")
public class ArtistAlbumC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AuthDAO.loginCheck(request);
		Crawler.artistAlbumCrwaler(request);
		Crawler.pageCrawler(request);
		ArtistDAO.getArtist(request);
		ArtistDAO.getLikeInfo(request);
		ArtistDAO.getLikeCount(request);
		request.setAttribute("contentPage", "jsp/artist/artist_info.jsp");
		request.setAttribute("detailContentPage", "artist_album.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
