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
 * Servlet implementation class OwnerReg
 */
@WebServlet("/OwnerReg")
public class OwnerReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerReg() {
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
		String sname=request.getParameter("shopname");
		System.out.println("Enter Your Show Name: "+sname);
		
		String bra=request.getParameter("branch");
		System.out.println("Enter Your Branch Name: "+bra);
		
		String area=request.getParameter("area");
		System.out.println("Enter Your Area: "+area);
		
		String email=request.getParameter("email");
		System.out.println("Enter Your Email: "+email);
		
		String phon=request.getParameter("phone");
		System.out.println("Enter Your Phone Number: "+phon);
		
		String pass=request.getParameter("password");
		System.out.println("Enter Your Password: "+pass);
		
		String conpass=request.getParameter("confirmpassword");
		System.out.println("Enter Your ConfirmPassword: "+conpass);
		
		Owner ow = new Owner();
		ow.setShop(sname);
		ow.setBranch(bra);
		ow.setArea(area);
		ow.setEmail(email);
		ow.setPhone(phon);
		ow.setPass(pass);
		ow.setConpass(conpass);
		
		Inter o=new Imple();
		int w=o.ownerreg(ow);
		if(w==1)
		{
			response.sendRedirect("OwnerLogin.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
