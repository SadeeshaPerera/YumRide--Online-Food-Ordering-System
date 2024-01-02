package com.ManageDeliveries;

/**
 * DeliveryPerson.java
 * This is a model class represents a DeliveryPerson entity
 * 
 *
 */
public class DeliveryPerson {
	protected int delivery_id;
	protected int order_id;
	protected int cus_id;
	protected String address;
	protected String status;
	protected String estimate_time;
	protected String actual_del_time;
	
	public DeliveryPerson() {
	}
	
	public DeliveryPerson(int order_id, int cus_id, String address, String status, String estimate_time, String actual_del_time) {
		super();
		this.order_id = order_id;
		this.cus_id = cus_id;
		this.address = address;
		this.status = status;
		this.estimate_time = estimate_time;
		this.actual_del_time = actual_del_time;
	}

	public DeliveryPerson(int delivery_id, int order_id, int cus_id, String address, String status, String estimate_time, String actual_del_time) {
		super();
		this.delivery_id = delivery_id;
		this.order_id = order_id;
		this.cus_id = cus_id;
		this.address = address;
		this.status = status;
		this.estimate_time = estimate_time;
		this.actual_del_time = actual_del_time;
	}

	public int getDelivery_id() {
		return delivery_id;
	}

	public void setDelivery_id(int delivery_id) {
		this.delivery_id = delivery_id;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getCus_id() {
		return cus_id;
	}

	public void setCus_id(int cus_id) {
		this.cus_id = cus_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getEstimate_time() {
		return estimate_time;
	}

	public void setEstimate_time(String estimate_time) {
		this.estimate_time = estimate_time;
	}

	public String getActual_del_time() {
		return actual_del_time;
	}

	public void setActual_del_time(String actual_del_time) {
		this.actual_del_time = actual_del_time;
	}
}
