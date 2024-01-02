package com.ManageOrders;

/**
 * Order.java
 * This is a model class represents a Order entity
 * 
 *
 */
public class Order {
	protected int o_id;
	protected int p_id;
	protected int u_id;
	protected int o_quantity;
	protected String o_date;
	
	public Order() {
	}
	
	
	public Order(int p_id, int u_id, int o_quantity, String o_date) {
		super();
		this.p_id = p_id;
		this.u_id = u_id;
		this.o_quantity = o_quantity;
		this.o_date = o_date;
	}

	
	
	public Order(int o_id, int p_id, int u_id, int o_quantity, String o_date) {
		super();
		this.o_id = o_id;
		this.p_id = p_id;
		this.u_id = u_id;
		this.o_quantity = o_quantity;
		this.o_date = o_date;
	}


	public int getO_id() {
		return o_id;
	}


	public void setO_id(int o_id) {
		this.o_id = o_id;
	}


	public int getP_id() {
		return p_id;
	}


	public void setP_id(int p_id) {
		this.p_id = p_id;
	}


	public int getU_id() {
		return u_id;
	}


	public void setU_id(int u_id) {
		this.u_id = u_id;
	}


	public int getO_quantity() {
		return o_quantity;
	}


	public void setO_quantity(int o_quantity) {
		this.o_quantity = o_quantity;
	}


	public String getO_date() {
		return o_date;
	}


	public void setO_date(String o_date) {
		this.o_date = o_date;
	}


}
