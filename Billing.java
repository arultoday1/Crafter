package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Imp.Imple;
import com.Int.Inter;
import com.bean.Shop;

/**
 * Servlet implementation class Billing
 */
@WebServlet("/Billing")
public class Billing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Billing() {
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
		String shop=request.getParameter("showname");
		System.out.println("Enter Your Show Name: "+shop);
		
		String mobile=request.getParameter("mobilename");
		System.out.println("Enter Your Mobile Name: "+mobile);
		
		String model=request.getParameter("mobilemodel");
		System.out.println("Enter Your Mobile Model: "+model);
		
		String branch=request.getParameter("branch");
		System.out.println("Enter Your Branch: "+branch);
		
		String price=request.getParameter("price");
		System.out.println("Enter Your Price: "+price);
		
		String date=request.getParameter("billdate");
		System.out.println("Enter Your Bill Date: "+date);
		
		String color=request.getParameter("mobilecolor");
		System.out.println("Enter Your Mobile Color: "+color);
		
		Shop sh=new Shop();
		sh.setShopname(shop);
		sh.setMobilename(mobile);
		sh.setMobilemodel(model);
		sh.setBranch(branch);
		sh.setPrice(price);
		sh.setBilldate(date);
		sh.setMobilecolor(color);
		
		Inter s=new Imple();
		int h=s.show(sh);
		if(h==1)
		{
			response.sendRedirect("thanks.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	}

}
