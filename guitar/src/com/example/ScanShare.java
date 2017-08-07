package com.example;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ScanShare
 */

public class ScanShare extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String path="C:\\Users\\J\\workspace2\\guitar\\WebContent\\sharefile";
		String path=getServletContext().getRealPath("") + "\\sharefile";
		
		File folder1 = new File(path);
		String[] list1 = folder1.list();

		ArrayList<String> Alist=new ArrayList<String>();
		
		for(int i=0;i<list1.length;i++)
		{
			
			Alist.add(list1[i]);
			
			
			
		}
		
		
		
		
		request.setAttribute("filelist", Alist);
		request.setAttribute("filelistnum", list1.length);
		
		RequestDispatcher view = request.getRequestDispatcher("share.jsp");
		view.forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
