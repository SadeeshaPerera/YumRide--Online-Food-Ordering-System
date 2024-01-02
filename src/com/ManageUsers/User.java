package com.ManageUsers;

/**
 * User.java
 * This is a model class represents a User entity
 * 
 *
 */
public class User {
	protected int id;
	protected String name;
	protected String email;
	protected String phone;
	protected String address;
	protected String username;
	protected String password;
	protected String role;
	
	public User() {
	}
	
	public User(String name, String email, String phone, String address, String username, String password, String role) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.username = username;
		this.password = password;
		this.role = role;
	}

	public User(int id, String name, String email, String phone, String address, String username, String password,
			String role) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.username = username;
		this.password = password;
		this.role = role;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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



}
