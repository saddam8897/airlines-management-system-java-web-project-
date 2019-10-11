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
import java.time.*;
import java.time.format.DateTimeFormatter;
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
		DateTimeFormatter dtf=DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss");
		LocalDateTime now=LocalDateTime.now();
		String date_time=dtf.format(now);
		String email=request.getParameter("email");
		String source = null,destination = null;
		int price = 0;
		Connection con=DbUtil.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from flightinfo where flight_no=?");  
			ps.setString(1,flightNo);  
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
			source=rs.getString("source");
			destination=rs.getString("destination");
			price=rs.getInt("ticket_price");
			}
			PreparedStatement ps1=con.prepareStatement("insert into booked(flight_no,source,destination,price,email,date_time) values(?,?,?,?,?,?)");  
			ps1.setString(1,flightNo);
			ps1.setString(2,source);
			ps1.setString(3,destination);
			ps1.setInt(4,price);
			ps1.setString(5,email);
			ps1.setString(6,date_time);
			ps1.executeUpdate();
			
			PreparedStatement ps2=con.prepareStatement("delete from flightinfo where flight_no=?");  
			ps2.setString(1,flightNo);
			ps2.executeUpdate();
		}catch(Exception e) {System.out.println(e);}
		RequestDispatcher rd= request.getRequestDispatcher("/index.jsp");
		rd.include(request, response);
		out.print("<script>"+"alert('yor ticket has been booked successfully');"+"</script>");
		
	}

}
