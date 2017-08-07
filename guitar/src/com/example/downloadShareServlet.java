package com.example;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class downloadServlet
 */

public class downloadShareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
	    {
			
			String temp=request.getParameter("which");
			
			
			String filename=new String(temp.getBytes("ISO8859_1"),"UTF-8");
			
			//String filename=new String(request.getParameter("which").getBytes("Big5"),"ISO8859_1");
	        //這裡你可以做些其他的事情
			System.out.println(filename);

	        response.setContentType("application/octet-stream");
	        response.setHeader("Content-Disposition", "attachment; filename=\""+new String(filename.getBytes("UTF-8"),"ISO8859_1") +"\"");
	         
	        //String filepath="C:\\Users\\J\\workspace2\\guitar\\WebContent\\sharefile\\"+filename;
	        String filepath=getServletContext().getRealPath("") +"\\sharefile\\"+filename;


	        BufferedInputStream in = null;  
	        ServletOutputStream out = null;  
	        FileInputStream stream = null;  
	        try {  
	        out = response.getOutputStream();  
	        stream = new FileInputStream(filepath);  
	         
	        int bytesRead = 0;  
	        final int length = 8192;  
	        byte[] buffer = new byte[length];  
	        while ((bytesRead = stream.read(buffer, 0, length)) != -1) {  
	        // write at server side  
	        out.write(buffer, 0, bytesRead);  
	        }  
	        } catch (IOException e) {  
	       
	        } finally {  
	        if (in != null) {  
	        in.close();  
	        }  
	        if (out != null) {  
	        out.close();  
	        }  
	        } 
	        
	        
	       
	        
	    }
	    catch (Exception e)
	    {
	        System.out.println(e);
	    }
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
	    doGet(request, response);
	}

}
