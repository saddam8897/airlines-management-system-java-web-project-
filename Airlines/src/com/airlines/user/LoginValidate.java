package com.airlines.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


/**
 * Servlet implementation class LoginValidate
 */
@WebServlet("/com.airlines.user.LoginValidate")
public class LoginValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession(false);
		if(session.getAttribute("name1")!=null) {
			RequestDispatcher rd= request.getRequestDispatcher("booking1.jsp");
			rd.include(request, response);
		}
		else {
			request.getRequestDispatcher("index.jsp").include(request, response);
			out.print("<script>"+"alert('login first!!!');"+"</script>");
			
		}
	}

}
