package com.ManageMenu;

/**
 * DeliveryPerson.java
 * This is a model class represents a DeliveryPerson entity
 * 
 *
 */
public class Product {
	protected int id;
	protected String name;
	protected String category;
	protected double price;
	protected String image;
	
	public Product() {
	}
	
	

	public Product(String name, String category, double price, String image) {
		super();
		this.name = name;
		this.category = category;
		this.price = price;
		this.image = image;
	}




	public Product(int id, String name, String category, double price, String image) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.image = image;
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



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public double getPrice() {
		return price;
	}



	public void setPrice(double price) {
		this.price = price;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}

	
	
	
	
	

}