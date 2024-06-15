package com.course_management.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.course_management.model.course;
import com.course_management.model.user;
import com.course_management.repo.courseinfo;
import com.course_management.repo.userinfo;



@Controller
public class usercon {
	
	@Autowired
    private userinfo usinfo;
	
	 @Autowired
	    private courseinfo courseRe;
	
	@GetMapping("/")
    public String home(HttpSession session, Model model) {
        if (session.getAttribute("username") != null) {
            model.addAttribute("username", session.getAttribute("username"));
        }
        return "Home.jsp";
    }
	
	
	@PostMapping("/register")
    public String registers(@ModelAttribute user ee) {
        usinfo.save(ee);
        return "Login.jsp";
    }

    @PostMapping("/Login")
    public String login(@RequestParam String email, @RequestParam String password, HttpSession session) {
        user ob = usinfo.findByEmail(email);
        if (ob != null && ob.getEmail().equals("admin@gmail.com") && ob.getPassword().equals("admin")) {
            return "AdminHome.jsp";

        } else if (ob != null && ob.getEmail().equals(email) && ob.getPassword().equals(password)) {
            session.setAttribute("username", ob.getName());
            return "redirect:/UserViewCourse";
        }

        else {
            return "Login.jsp";
        }
    }
	
	
	 @GetMapping("/UserViewCourse")
	    public String userViewProperty(Model model) {
	        List<course> userpro = courseRe.findAll();
	        model.addAttribute("userpro", userpro);
	        return "ViewCourse.jsp";
	    }
	 


}

