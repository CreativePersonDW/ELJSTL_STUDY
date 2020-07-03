package com.kh.el.model.vo;

import java.io.Serializable;

public class Member implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4041871953205713045L;
	private String name;
	private int age;
	private String phone;
	private String email;
	
	public Member() {
		super();
	}

	public Member(String name, int age, String phone, String email) {
		super();
		this.name = name;
		this.age = age;
		this.phone = phone;
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Member [name=" + name + ", age=" + age + ", phone=" + phone + ", email=" + email + "]";
	}

	
	
	
}
