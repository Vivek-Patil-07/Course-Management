package com.course_management.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class course {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String coursename;
	private String courseowner;
	private double price;
	private String date;
	private String duration;
	@Column(name = "image_url")
	private String imageUrl;
    private String material;
	private String Desc;
	private String features;
	
	private String category;
    private String level;
    
    
	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getCourseowner() {
		return courseowner;
	}

	public void setCourseowner(String courseowner) {
		this.courseowner = courseowner;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getDesc() {
		return Desc;
	}

	public void setDesc(String desc) {
		Desc = desc;
	}

	public String getFeatures() {
		return features;
	}

	public void setFeatures(String features) {
		this.features = features;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public course(int id, String coursename, String courseowner, double price, String date, String duration,
			String imageUrl, String material, String desc, String features, String category) {
		super();
		this.id = id;
		this.coursename = coursename;
		this.courseowner = courseowner;
		this.price = price;
		this.date = date;
		this.duration = duration;
		this.imageUrl = imageUrl;
		this.material = material;
		Desc = desc;
		this.features = features;
		this.category = category;
	}

	public course(String level) {
		super();
		this.level = level;
	}

	

	@Override
	public String toString() {
		return "course [id=" + id + ", coursename=" + coursename + ", courseowner=" + courseowner + ", price=" + price
				+ ", date=" + date + ", duration=" + duration + ", imageUrl=" + imageUrl + ", material=" + material
				+ ", Desc=" + Desc + ", features=" + features + ", category=" + category + ", level=" + level + "]";
	}

	public course() {
		
	}
	
	
	
	
}
