package com.example;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;




import com.oreilly.servlet.*;

/**
 *   文件的上传
 * 
 * @author myluo
 *
 */
@MultipartConfig
public class uploadServlet extends  HttpServlet{

     /**
     * 
     */
    private static final long serialVersionUID = 1L;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
             doPost(req, resp);
    }


     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 
    	 /*
    	 String saveDirectory="C:\\Users\\J\\workspace2\\guitar\\WebContent\\sharefile";
    	 int maxPostSize=5*1024*1024;
    	 

    	 MultipartRequest mrequest=new MultipartRequest(request, saveDirectory,maxPostSize);
    	 
    	 
    	 
    	 
    	 String filename = mrequest.getParameter("filename");
    	 String Description = mrequest.getParameter("description");
    	 
    	 
    	 */
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
         try {
            //设置request作用域的编码格式
            request.setCharacterEncoding("UTF-8");
            //设置response作用域的值
            response.setContentType("text/html; charset=UTF-8");
            //初始化磁盘工厂
            DiskFileItemFactory dfif = new DiskFileItemFactory();
            //设置临时上传的路径,这里用的是相路径
            String itemPath = "/myluo";
            //根据这个路径创建一个文件
            File f = new File(itemPath);
            //判断此文件的在此路径目录是否存在，如果不存在，创建文件夹
            if (!f.exists()) {
                //创建文件所需的目录
                f.mkdirs();
            }
            //设置上传文件临时目录
            dfif.setRepository(f);
            //设置缓冲区大小
            dfif.setSizeThreshold(4 * 1024 * 1024);//缓存大小为4M
            //初始化上传组件
            ServletFileUpload sfu = new ServletFileUpload(dfif);
            //设置上传文件的大小
            sfu.setFileSizeMax(6 * 1024 * 1024);//最大上传为6M
            //开始解析上传的文件,达到list集合
            List <FileItem> parseRequest = sfu.parseRequest(request);
            //获取表单提交的数量
            System.out.println("jsp页面表单提交input数量："+parseRequest.size());
            //循环遍历list集合
            for(FileItem  ff:parseRequest){
                //System.out.println("获取的是name"+ff.getFieldName()+":value值"+ff.getString());
                //判断是否是上传文件
                if(ff.getFieldName().equals("fileUpload")){
                    //获取上传文件名字
                    String name = ff.getName();
                    //文件保存的相对路径
                   // String  filePath="C:\\Users\\J\\workspace2\\guitar\\WebContent\\sharefile";
        	        String filePath=getServletContext().getRealPath("") +"\\sharefile";

                    
                    //根究相对路径构建决对路径
                    String realPath = request.getSession().getServletContext().getRealPath(filePath);
                    System.out.println("写入流的绝对路径："+realPath);
                    //根究绝对路径创建文件
                    File fe=new  File(filePath);
                     //判断创建文件的目录是否存在
                    if(!fe.exists()){
                        //不存在就构建
                        fe.mkdirs();
                    }
                    //根究文件的名字和路径创建
                    
                    
                    
                    String dep_name = null;
                    
                    if (name.lastIndexOf(".") > 0) {
                    	dep_name=name.substring(name.lastIndexOf(".")+1);
                    }		
                    		
                    
                    

                    File  obj=new File(filePath,name);
                    //开始把上传的文件写入
                    
                    
                    ff.write(obj);
                    System.out.println("path="+realPath+name);
                    //把文件保存的路径存到request作用域
                    request.setAttribute("path", filePath+name);

                }else{

                    //System.out.println("我不是上传文件的值："+ff.getString());
                    //获取表单提交的值，中文乱码处理
                    System.out.println(new String(ff.getString().getBytes("ISO-8859-1"),"UTF-8"));

                }


            }



        } catch (Exception e) {
            e.printStackTrace();
        }

        //String  path="C:\\Users\\J\\workspace2\\guitar\\WebContent\\sharefile";
        String path=getServletContext().getRealPath("") +"\\sharefile";

         
         File folder1 = new File(path);
 		String[] list1 = folder1.list();

 		ArrayList<String> Alist=new ArrayList<String>();
 		
 		for(int i=0;i<list1.length;i++)
 		{
 			
 			Alist.add(list1[i]);
 			
 			
 			
 		}
 		
 		
 		
 		
 		
 		
 		/*
 		String filepath = "C:\\Users\\J\\workspace2\\guitar\\fileinfo.txt";
		
		
		String str1=outerNewName;
		String str2=Description;
		
		
		FileWriter fw = new FileWriter(filepath,true);
		
		
		 fw.write('\n'+str1+" "+str2);
		 fw.write('\n');   //寫入換行字元 
		   
		 fw.flush();
		 fw.close();

		
		
		HashMap<String,String> userinfo =new HashMap<String,String>();
		
		Readfile ru = new Readfile();
		ru.openFile(filepath);
		
		userinfo=ru.readfiles();
		
		
		ArrayList<String> filelist=new ArrayList<String>();
		ArrayList<String> desclist=new ArrayList<String>();
		
		for (Object key : userinfo.keySet()) {
			filelist.add(key.toString());
			desclist.add(userinfo.get(key).toString());
			
            System.out.println(key + " : " + userinfo.get(key));
        }
 		
		
		request.setAttribute("filelist", filelist);
 		request.setAttribute("desclist", desclist);
 		
 		
 		*/
 		
 		
 		
 		request.setAttribute("filelist", Alist);
 		request.setAttribute("filelistnum", list1.length);
 		
 		
 		
 		RequestDispatcher view = request.getRequestDispatcher("share.jsp");
 		view.forward(request, response);		
         

    }

}