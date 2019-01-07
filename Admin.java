package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JDialog;
import javax.swing.JOptionPane;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
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
		String admin=request.getParameter("admin");
		System.out.println("Enter Your Admin Name: "+admin);
		
		String pass=request.getParameter("apws");
		System.out.println("Enter Your Password: "+pass);
		
		if(admin.equals("Admin@gmail.com")&& pass.equals("Admin"))
		{
			response.sendRedirect("Store.jsp");
		}
		else
		{
			JOptionPane jpane=new JOptionPane("Invalid Log In");
			JDialog jdialog=jpane.createDialog("Alert");
			
			jdialog.setAlwaysOnTop(true);
			
			response.sendRedirect("error.jsp");
		}
	}

}
