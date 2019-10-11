package com.airlines.user;
import com.airlines.db.*;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/com.airlines.user.PasswordChange")
public class PasswordChange extends  HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
	
		String otpsent=MailDispatcher.message;
		String email=MailDispatcher.toEmail;
		
		String pass=req.getParameter("newpass");
		String otprecieved=req.getParameter("otp");
		//if(email.equalsIgnoreCase(email1)) {
  		Connection con= DbUtil.getConnection();
		try {
			
				if(otpsent.equals(otprecieved)) {
			PreparedStatement ps=con.prepareStatement("update customer set password=? where email=?");
			Statement stmt =con.createStatement();
			ps.setString(1, pass);
			ps.setString(2, email);
			int i = ps.executeUpdate();
			ResultSet rs=stmt.executeQuery("select * from customer where email='"+email+"'");
			
		
			//String name=rs.getString("name");
			rs.next();
			if(i>0) {
				HttpSession session = req.getSession();
				String name=rs.getString("name");
				session.setAttribute("name1",name);
				
			RequestDispatcher rd= req.getRequestDispatcher("index.jsp");
			rd.include(req, res);
			out.print("<script>"+"alert('password changed successfully!!!');"+"</script>");
			}
				}else {
				
					out.print("<script>"+"alert('enter correct otp??');"+"</script>");
				

				RequestDispatcher rd= req.getRequestDispatcher("forgotPassword.jsp");
				rd.include(req, res);
				}
			
		}catch(Exception e) {System.out.println(e);}
		
		out.close();
		
	}
}
