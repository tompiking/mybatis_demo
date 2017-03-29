package com.qingke.mybatis.model;

import java.util.List;

public class Status {
	public 	Integer id;
	public String code;
	public List<Student> students;
	
	public List<Student> getStudents() {
		return students;
	}
	public void setStudents(List<Student> students) {
		this.students = students;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@Override
	public String toString() {
		return "Status [id=" + id + ", code=" + code + ", students=" + students + "]";
	}
	
	
	
}
