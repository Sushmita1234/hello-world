package com.web.BookingManagement.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	
	
	@GetMapping("/")
	public ModelAndView login() {
		ModelAndView ret = new ModelAndView("home");
		return ret;
	}
	
	
	@PostMapping("submitSchedule")
	public  String submitSchedule(@RequestParam(name = "title") String title, @RequestParam(name = "duration") String duration) throws IOException {
		
		URL url = getClass().getResource("ScheduleList.txt");
		File f = new File(url.getPath());
       
       
		if (f.exists()) {
			 System.out.println("Exists" + title); 
			 
			 String str = title+" " +duration+"min";
			try {
				FileOutputStream outputStream = new FileOutputStream(f);
			    byte[] strToBytes = str.getBytes();
			    outputStream.write(strToBytes);
			    outputStream.flush();
			    outputStream.close();
		        
			} catch (IOException e) {
				e.printStackTrace();
				
			}    
			System.out.println(url.getPath());
	        System.out.println(f.getAbsolutePath()); 
		}
        else {
        	 f.createNewFile();
        	  
            System.out.println("Does not Exists"); 
        }
		return "home"; 
		
	}
}
