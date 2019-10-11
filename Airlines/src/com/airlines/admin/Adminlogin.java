package com.airlines.admin;
import com.airlines.db.*;
import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/com.airlines.admin.Adminlogin")
public class Adminlogin extends  HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String uname=req.getParameter("email");
		String pass=req.getParameter("password");
		Connection con = DbUtil.getConnection();
		try {
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery("select admin_email,admin_pass from admin");
			int flag=0;
			while(rs.next()) {
				if((uname.equals(rs.getString(1))) && pass.equals(rs.getString(2))) {
					flag++;
					break;
				}
			}
			if(flag==0) {
				out.print("<center style='margin-top:95px;color:green;'>"+"invalid user name or password"+"</center>");
			RequestDispatcher rd= req.getRequestDispatcher("/adminlogin.html");
			rd.include(req, res);
			}
			else {
				
				res.sendRedirect("flight.html");
				//out.print("<center style='margin-top:95px;'>"+"Login Successful..."+"<br>"+"Welcome "+"&nbsp;&nbsp;"+"<b style='color:green;'>"+uname.toUpperCase()+"</b>"+"</center>");
			}
			//con.close();
			
		}catch(Exception e) {System.out.println(e);}
	}
}