package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Imp.Imple;
import com.Int.Inter;
import com.bean.Owner;

/**
 * Servlet implementation class OwnerLogin
 */
@WebServlet("/OwnerLogin")
public class OwnerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email=request.getParameter("email");
		System.out.println("Enter Your Owner Email: "+email);
		
		String pass=request.getParameter("password");
		System.out.println("Enter Your Password: "+pass);
		
		Owner o=new Owner();
		o.setEmail(email);
		o.setPass(pass);
		
		Inter w=new Imple();
		boolean n=w.ownerlog(o);
		if(n==true)
		{
			response.sendRedirect("Shop.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
