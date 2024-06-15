package com.course_management.repo;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.course_management.model.course;



public interface courseinfo extends JpaRepository<course, Integer> {
	public course findById(int id);
	 
	 @Query("SELECT p FROM course p WHERE p.coursename LIKE %:coursename% AND p.level LIKE %:level% AND p.category LIKE %:category%")
	    List<course> findByStateCityAndCategory(@Param("coursename") String coursename, @Param("level") String level, @Param("category") String category);
	
	  } 


