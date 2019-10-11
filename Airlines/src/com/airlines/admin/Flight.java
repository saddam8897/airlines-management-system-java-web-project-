package com.airlines.admin;
import com.airlines.db.*;
import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/com.airlines.admin.Flight")
public class Flight extends  HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		String flightno=req.getParameter("flightno");
		String flightname=req.getParameter("flightname");
		String source=req.getParameter("source");
		String destination=req.getParameter("destination");
		String date=req.getParameter("date");
		String time=req.getParameter("time");
		String duration=req.getParameter("duration");
		String airportname=req.getParameter("airportname");
		int price=Integer.parseInt(req.getParameter("tprice"));
		
		Connection con= DbUtil.getConnection();
		try {
			
			PreparedStatement stmt = con.prepareStatement("insert into flightinfo values(?,?,?,?,?,?,?,?,?)");
			stmt.setString(1, flightno);
			stmt.setString(2, flightname);
			stmt.setString(3, source);
			stmt.setString(4, destination);
			stmt.setString(5, date);
			stmt.setString(6, time);
			stmt.setString(7, duration);
			stmt.setString(8, airportname);
			stmt.setInt(9, price);
			int i=stmt.executeUpdate();
			if(i>0) {
				
			//out.print("<center style='margin-top:95px;'>"+"<h6 style=\"color:green;\">"+"<b>"+"flight details saved successfully..."+"</b></h6></center>");
				out.print("<script>"+"alert('details saved successfully');"+"</script>");
			RequestDispatcher rd= req.getRequestDispatcher("/flight.html");
			rd.include(req, res);
			}
			//con.close();
		}catch(Exception e) {System.out.println(e);}
	}
}