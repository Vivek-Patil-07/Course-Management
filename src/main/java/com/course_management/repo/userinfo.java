package com.course_management.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.course_management.model.user;



@Repository
public interface userinfo extends JpaRepository<user,Integer> {
	public user findByEmail(String email);


}
