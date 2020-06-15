package com.java.beans;

public class AdminBean {
	private int id;
	private String name;
	private String password;
	private String role;
	private String feedback;
	private String reviewedPerson;
	private String reviewingPerson;
	private String review;
	
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getReviewedPerson() {
		return reviewedPerson;
	}
	public void setReviewedPerson(String reviewedPerson) {
		this.reviewedPerson = reviewedPerson;
	}
	public String getReviewingPerson() {
		return reviewingPerson;
	}
	public void setReviewingPerson(String reviewingPerson) {
		this.reviewingPerson = reviewingPerson;
	}
}
