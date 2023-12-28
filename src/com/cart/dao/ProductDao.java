package com.cart.dao;

import java.sql.*;
import java.util.*;

import com.cart.model.Cart;
import com.cart.model.Product;

public class ProductDao {
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    

	public ProductDao(Connection con) {
		super();
		this.con = con;
	}
	
	
	public List<Product> getAllProducts() {
        List<Product> book = new ArrayList<>();
        try {

            query = "select * from products";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product row = new Product();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("image"));

                book.add(row);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
	
	public List<Product> getAllBurgers() {
        List<Product> bookburgers = new ArrayList<>();
        try {

            query = "select * from products where category='Burger'";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product rowburger = new Product();
            	rowburger.setId(rs.getInt("id"));
            	rowburger.setName(rs.getString("name"));
            	rowburger.setCategory(rs.getString("category"));
            	rowburger.setPrice(rs.getDouble("price"));
            	rowburger.setImage(rs.getString("image"));

            	bookburgers.add(rowburger);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return bookburgers;
    }
	
	
	
	public List<Product> getAllDeserts() {
        List<Product> bookdeserts = new ArrayList<>();
        try {

            query = "select * from products where category='Dessert'";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product rowdesert = new Product();
            	rowdesert.setId(rs.getInt("id"));
            	rowdesert.setName(rs.getString("name"));
            	rowdesert.setCategory(rs.getString("category"));
            	rowdesert.setPrice(rs.getDouble("price"));
            	rowdesert.setImage(rs.getString("image"));

                bookdeserts.add(rowdesert);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return bookdeserts;
    }
	
	
	public List<Product> getAllBeverages() {
        List<Product> bookbeverages = new ArrayList<>();
        try {

            query = "select * from products where category='Beverage'";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();

            while (rs.next()) {
            	Product rowbeverage = new Product();
            	rowbeverage.setId(rs.getInt("id"));
            	rowbeverage.setName(rs.getString("name"));
            	rowbeverage.setCategory(rs.getString("category"));
            	rowbeverage.setPrice(rs.getDouble("price"));
            	rowbeverage.setImage(rs.getString("image"));

            	bookbeverages.add(rowbeverage);
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return bookbeverages;
    }
	
	
	
	
	
	
	 public Product getSingleProduct(int id) {
		 Product row = null;
	        try {
	            query = "select * from products where id=? ";

	            pst = this.con.prepareStatement(query);
	            pst.setInt(1, id);
	            ResultSet rs = pst.executeQuery();

	            while (rs.next()) {
	            	row = new Product();
	                row.setId(rs.getInt("id"));
	                row.setName(rs.getString("name"));
	                row.setCategory(rs.getString("category"));
	                row.setPrice(rs.getDouble("price"));
	                row.setImage(rs.getString("image"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }

	        return row;
	    }
	
	public double getTotalCartPrice(ArrayList<Cart> cartList) {
        double sum = 0;
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    query = "select price from products where id=?";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        sum+=rs.getDouble("price")*item.getQuantity();
                    }

                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return sum;
    }

    
    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> book = new ArrayList<>();
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    query = "select * from products where id=?";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getInt("id"));
                        row.setName(rs.getString("name"));
                        row.setCategory(rs.getString("category"));
                        row.setPrice(rs.getDouble("price")*item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        book.add(row);
                    }

                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return book;
    }
}
