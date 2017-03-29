package com.qingke.mybatis.model;

import org.apache.ibatis.type.Alias;

@Alias("Tom")
public class Student {
	public 	Integer id;
	public String sid;
	public 	String first;
	public 	String last;
	public 	String gender;
	public 	String email;
	public 	String date_of_birth;
	public  Integer student_status_id;
	public  Status status;
	
	@Override
	public String toString() {
		return "Student [id=" + id + ", sid=" + sid + ", first=" + first + ", last=" + last + ", gender=" + gender
				+ ", email=" + email + ", date_of_birth=" + date_of_birth + ", student_status_id=" + student_status_id
				+ "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getFirst() {
		return first;
	}
	public void setFirst(String first) {
		this.first = first;
	}
	public String getLast() {
		return last;
	}
	public void setLast(String last) {
		this.last = last;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDate_of_birth() {
		return date_of_birth;
	}
	public void setDate_of_birth(String date_of_birth) {
		this.date_of_birth = date_of_birth;
	}
	public Integer getStudent_status_id() {
		return student_status_id;
	}
	public void setStudent_status_id(Integer student_status_id) {
		this.student_status_id = student_status_id;
	}

	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	
}
