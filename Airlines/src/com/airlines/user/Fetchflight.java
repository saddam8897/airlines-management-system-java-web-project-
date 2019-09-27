package com.airlines.user;
import com.airlines.db.*;
import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/com.airlines.user.Fetchflight")
public class Fetchflight extends  HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String source=req.getParameter("source");
		String destination=req.getParameter("destination");
		String date=req.getParameter("date");
		
		Connection con = DbUtil.getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement("select * from flightinfo where (source=? and destination =? and flight_date=?)");
			stmt.setString(1, source);
			stmt.setString(2, destination);
			stmt.setString(3, date);
			
			ResultSet rs=stmt.executeQuery();
			while(rs.next()) {
				out.print(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+rs.getString(7)+" "+rs.getString(8)+" "+rs.getInt(9));
				//out.print("<br>");
			}
			
		}catch(Exception e) {System.out.println(e);}
	}
}