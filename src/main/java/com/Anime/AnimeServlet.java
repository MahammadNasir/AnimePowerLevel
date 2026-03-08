package com.Anime;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/power")
public class AnimeServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("Cname");
		int powerLevel=1000 + (int) (Math.random()*8001);
		String rank;
		if(powerLevel<2000) {
			rank="Rookie";
		}
		else if(powerLevel<5000) {
			rank="Elite";
		}
		else if(powerLevel<8000) {
			rank="legendary";
		}
		else {
			rank="!over8000";
		}
		request.setAttribute("name",name);
		request.setAttribute("powerlevel", powerLevel);
		request.setAttribute("rank", rank);
		RequestDispatcher rd = request.getRequestDispatcher("power.jsp");
		rd.forward(request, response);
	}

}
