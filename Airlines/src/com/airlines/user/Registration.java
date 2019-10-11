package com.airlines.user;
import com.airlines.db.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/com.airlines.user.Registration")
//@javax.servlet.annotation.MultipartConfig
public class Registration extends  HttpServlet{
	private static final long serialVersionUID = 1L;
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		String email=req.getParameter("email");
		String name=req.getParameter("name");
		String phone=req.getParameter("phone");
		String password=req.getParameter("pass");
		
		Connection con=DbUtil.getConnection();
		try {
			

			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery("select * from customer where email= '"+email+"'");
			
			//String name=rs.getString("name");
			if(rs.next()) {
				out.print("<script>"+"alert('Already have an account for this email!!');"+"</script>");
			RequestDispatcher rd= req.getRequestDispatcher("/index.jsp");
			rd.include(req, res);
			}else {
			PreparedStatement ps=con.prepareStatement("insert into customer(email,name,phone,password) values(?,?,?,?)");  
			ps.setString(1,email);  
			ps.setString(2,name);  
			ps.setString(3,phone);   
			ps.setString(4,password);
			          
			int i=ps.executeUpdate(); 
			
			if(i>0)  
			out.print("<script>"+"alert('Thanks  you are successfully registered!!!');"+"</script>");
				//out.print("<center>"+"Thanks &nbsp;&nbsp;"+"<b style='color:green;'>"+name.toUpperCase()+"</b>"+"<br>"+"You are successfully registered..."+"</center>");  
			req.getSession().setAttribute("name1",name);
			RequestDispatcher rd= req.getRequestDispatcher("WelcomeUser.jsp");
			rd.include(req, res);
			//con.close();   
			
			}
		}catch (Exception e) {System.out.println(e);} 

		out.close();
	}
}


