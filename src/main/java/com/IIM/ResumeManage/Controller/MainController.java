package com.IIM.ResumeManage.Controller;


import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.IIM.ResumeManage.DAO.UserDAO;
import com.IIM.ResumeManage.Model.User;

@Controller
public class MainController {

	UserDAO userDAO;
	
	    @RequestMapping("/ResumeManage")
	     public String home(Map<String,Object> model) {
	    	model.put("message", "HowToDOInJava Reader !!");
	    	
	    	User user = new User(1,"Test","Test",1,1,"y");
	    	/*boolean s=userDAO.checkAuthenticate(user);
	    	//user.setUserName("test");   
	    	
	    //user.setPassword("test");
	    	if(s == true) // if(s)
	    	
	    		System.out.println("JDBC success");*/
	    
	    	return "kgisl"; 
	    }

	}
