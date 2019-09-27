package com.airlines.user;
import com.airlines.db.*;
import java.io.*;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/com.airlines.user.Login")
public class Login extends  HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		
		String uname=req.getParameter("lname");
		String pass=req.getParameter("lpass");
		Connection con= DbUtil.getConnection();
		try {
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery("select name from customer where email= '"+uname+"'and password= '"+pass+"' ");
		
			//String name=rs.getString("name");
			if(rs.next()) {
				HttpSession session=req.getSession();
				String name=rs.getString("name");
				session.setAttribute("name1",name);
			RequestDispatcher rd= req.getRequestDispatcher("WelcomeUser.jsp");
			rd.forward(req, res);
			}
			else {
				out.print("<script>"+"alert('Sorry  wrong username or password!!!');"+"</script>");
			//con.close();
				//res.sendRedirect("index.html");
				RequestDispatcher rd= req.getRequestDispatcher("/index.html");
				rd.include(req, res);
				
			}
		}catch(Exception e) {System.out.println(e);}
		
		out.close();
		
	}
}