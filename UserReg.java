package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Imp.Imple;
import com.Int.Inter;
import com.bean.UserLogin;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class UserReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UserReg() {
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
		
		String name=request.getParameter("name");
		System.out.println("Enter Your Name: "+name);
		
		String email=request.getParameter("email");
		System.out.println("Enater Your Email: "+email);
		
		String pho=request.getParameter("phone");
		System.out.println("Enater Your Phone: "+pho);
		
		String password=request.getParameter("password");
		System.out.println("Enter Your Password: "+password);
		
		String conpassword=request.getParameter("cpassword");
		System.out.println("Enter Your Confirm Password: "+conpassword);
		
		String key=request.getParameter("key");
		System.out.println("Enter Your Key: "+key);
		
		String keyma=request.getParameter("keyma");
		System.out.println("Enter Your KeyMa: "+keyma);
		
		UserLogin ur=new UserLogin();
		ur.setName(name);
		ur.setEmail(email);
		ur.setPhone(pho);
		ur.setPasswod(password);
		ur.setCpasswod(conpassword);
		ur.setKey(key);
		ur.setKeyma(keyma);
		
		
		Inter r=new Imple();
		int u=r.userregs(ur);
		if(u==1)
		{
			response.sendRedirect("userlogin.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
