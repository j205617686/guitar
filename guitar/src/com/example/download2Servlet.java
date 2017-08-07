package com.example;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class download2Servlet
 */
@WebServlet("/download2.do")
public class download2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
	    {
			
	        //這裡你可以做些其他的事情
			
			
			String list[]={"","愛愛愛-方大同.doc","原來-林俊傑.doc","晴天-周杰倫.doc","紅豆-方大同.doc","喜歡寂寞.doc","擁抱.txt","給我你的愛-Tank.doc","非你莫屬-Tank.doc","雨天-孫燕姿.doc","K歌之王.doc","十年.doc","一百種生活-盧廣仲.doc","不懂-林俊傑.doc","沒那麼簡單-黃小琥.doc","隱形的翅膀-張韶涵.doc"};
			
			
			String filenumStr = request.getParameter("num");
			int filenum = Integer.parseInt(filenumStr);
			
	        response.setContentType("application/octet-stream");
	        response.setHeader("Content-Disposition", "attachment; filename=\""+new String(list[filenum].getBytes("BIG5"),"ISO8859_1")+"\"");
	            
	       // String filepath="C:\\Users\\J\\workspace2\\guitar\\WebContent\\chordfile\\"+list[filenum];
	        String filepath=getServletContext().getRealPath("") +"\\chordfile\\"+list[filenum];

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
