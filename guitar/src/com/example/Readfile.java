package com.example;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Scanner;
import java.util.StringTokenizer;



public class Readfile {
	
	private Scanner input;
	//private String filepath = "C:\\Users\\J\\workspace\\scanfile\\text\\quiz.txt";

	// enable user to open file
	public void openFile(String filepath)
	{
		try
		{
			input = new Scanner(new File(filepath), "utf-8");
		} // end try
		catch ( FileNotFoundException fileNotFoundException )
		{
			System.err.println("Error opening file.");
			System.exit(1);
		} // end catch
	} // end method openFile

	// read quiz from file
	public HashMap<String,String> readfiles()
	{
		
		HashMap<String,String> userinfo =new HashMap<String,String>();
		
		int count = 0;
		
		try // read records from file using Scanner object
		{
			while (input.hasNextLine())
			{
				
				file u=new file(); 
				
				
				int ansNum=0;
				StringTokenizer tokens = new StringTokenizer(input.nextLine());
				//++count;
				
				
				
				
				if (tokens.hasMoreTokens()) 
				{
					String token = tokens.nextToken();
					
					u.setFilename(token);
					//quiz.setAnswer(1);
				}
				if(tokens.hasMoreTokens()) 
				{
					String token = tokens.nextToken();
				
					u.setDescription(token);					
				}
				
				
				userinfo.put(u.getFilename(),u.getDescription());
				
			}
				
					
		} // end try
		catch (IllegalStateException stateException)
		{
			System.err.println("Error reading from file.");
			System.exit(1);
		} // end catch
		
		
			return(userinfo);
	
		
	} // end method readRecords

	// close file and terminate application
	public void closeFile()
	{
		if ( input != null )
			input.close(); // close file
	} // end method closeFile

}
