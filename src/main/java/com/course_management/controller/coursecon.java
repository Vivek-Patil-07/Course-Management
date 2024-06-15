package com.course_management.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.course_management.model.course;
import com.course_management.repo.courseinfo;


@Controller
public class coursecon {

	@Autowired
    private courseinfo proin;

 @PostMapping("/addpro")
    public String addpro(@ModelAttribute course p, @RequestParam("imageUrl") String imageUrl,@RequestParam("material") String material) {
        p.setImageUrl(imageUrl);
        p.setMaterial(material);
        proin.save(p);
        return "redirect:/viewpro";
    }

    @GetMapping("/viewpro")
    public String fetch(Model model) {
        List<course> proList = proin.findAll();
        model.addAttribute("proList", proList);
        return "AdminViewCourse.jsp";
    }
    
    @RequestMapping("delete/{id}")
    public String deleteuser(@PathVariable int id) {
        proin.deleteById(id);
        return "redirect:/viewpro";
    }
    
    @RequestMapping("/{id}")
    public String edit(@PathVariable int id, Model model) {
        course pro = proin.findById(id);
        model.addAttribute("pro",pro);
        return "edit.jsp";
    }
    
    @RequestMapping("/edit/{id}")
    public String edituser(@PathVariable int id,@ModelAttribute course p) {
    	course ob=proin.findById(id);
    	if(ob!=null) {
    		ob.setCoursename(p.getCoursename());
    		ob.setCourseowner(p.getCourseowner());
    		ob.setPrice(p.getPrice());
    		ob.setDate(p.getDate());
    		ob.setDuration(p.getDuration());
    		ob.setLevel(p.getLevel());
    		ob.setImageUrl(p.getImageUrl());
    		ob.setMaterial(p.getMaterial());
    		ob.setDesc(p.getDesc());
    		ob.setFeatures(p.getFeatures());
    		ob.setCategory(p.getCategory());
    		
    		proin.save(ob);
    	}
    	return "redirect:/viewpro";
    }
    
    
    
    @GetMapping("/search")
    public String search(@RequestParam("coursename") String coursename, @RequestParam("level") String level, @RequestParam("category") String category, Model model) {
        List<course> searchResults = proin.findByStateCityAndCategory(coursename, level, category);
        model.addAttribute("proList", searchResults);
        return "searchResults.jsp";  // A new JSP to display search results
    }
    
}
