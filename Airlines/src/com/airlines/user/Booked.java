package com.airlines.user;
import com.airlines.admin.*;
import com.airlines.db.DbUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Booked
 */
@WebServlet("/com.airlines.user.Booked")
public class Booked extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String flightNo=request.getParameter("flight");
		System.out.print(flightNo);
		Connection con=DbUtil.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("delete from flightinfo where flight_no=?");  
			ps.setString(1,flightNo);  
			ps.executeUpdate();
		}catch(Exception e) {System.out.println(e);}
		out.print("<script>"+"alert('yor ticket has been booked successfully');"+"</script>");
		RequestDispatcher rd= request.getRequestDispatcher("/index.html");
		rd.include(request, response);
	}

}
