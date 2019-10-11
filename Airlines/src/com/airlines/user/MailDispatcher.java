package com.airlines.user;
import com.airlines.db.*;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/com.airlines.user.MailDispatcher")
public class MailDispatcher extends  HttpServlet{
	
	static String message;
	static String toEmail;
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		//String name=req.getParameter("name");
		toEmail=req.getParameter("email");
//		String subject=req.getParameter("subject");
//		String message=req.getParameter("message");
		
		String subject="OTP - to reset password";
		message="8956";
		String fromEmail="saddamhussain.iimt@gmail.com";
		String userName= "saddamhussain.iimt";
		String password="Sadsab7222";
		Connection con= DbUtil.getConnection();
		try {
			Statement stmt =con.createStatement();
			ResultSet rs= stmt.executeQuery("select * from customer where email='"+toEmail+"'");
			if(rs.next()) {
				MailSender.sendEmail(fromEmail, userName, password, toEmail, subject, message);
				//out.print("mail send successfully !!!"+name);
				//req.setAttribute("name", "reset");
				HttpSession session =req.getSession();
				session.setAttribute("name", "reset");
				res.sendRedirect("forgotPassword.jsp");
					
				}else {
					out.print("<script>"+"alert('Sorry !!  no account found for this email');"+"</script>");
					RequestDispatcher rd= req.getRequestDispatcher("forgotPassword.jsp");
					rd.include(req, res);
				
				}
		}catch(Exception e) {System.out.print(e);}
		
		
//		out.print(toEmail);
//		out.print(subject);
//		out.print(message);
		
	}
}