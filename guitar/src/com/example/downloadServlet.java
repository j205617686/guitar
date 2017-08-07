package com.example;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
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

public class downloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public downloadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
	    {
			
	        //這裡你可以做些其他的事情
			
			
			String list[]={"","BlueBird.pdf","tomorrow_sunny.gp5","缺角地圖.pdf","fight.gp5","rainy_Waltz.gp5","miracle_mountain.gp5","twilight.gtp","Wings you are the HERO.gtp","saving all my love for you.gp5","tune in conan.gp5","hanabi.pdf","night_driver.gp4","marunouchi sadistic.gp5","Miss_dike.gp5","Wedding.pdf"};
			
			
			String filenumStr = request.getParameter("num");
			int filenum = Integer.parseInt(filenumStr);
			
	        response.setContentType("application/octet-stream");
	        response.setHeader("Content-Disposition", "attachment; filename=\""+new String(list[filenum].getBytes("BIG5"),"ISO8859_1")+"\"");
	            
	        //String filepath="C:\\Users\\J\\workspace2\\guitar\\WebContent\\file\\"+list[filenum];
	        String filepath=getServletContext().getRealPath("") +"\\file\\"+list[filenum];


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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
