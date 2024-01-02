package com.ManageOrders;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the order.
 * 
 */

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private OrderDAO orderDAO;
	
	public void init() {
		orderDAO = new OrderDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new3":
				showNewForm(request, response);
				break;
			case "/insert3":
				insertOrder(request, response);
				break;
			case "/delete3":
				deleteOrder(request, response);
				break;
			case "/edit3":
				showEditForm(request, response);
				break;
			case "/update3":
				updateOrder(request, response);
				break;	
			case "/list3":
				listOrder(request, response);
				break;
			default:
				System.out.println("Order Actions");
				
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listOrder(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Order> listOrder = orderDAO.selectAllOrders();
		request.setAttribute("listOrder", listOrder);
		RequestDispatcher dispatcher = request.getRequestDispatcher("order-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("order-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int o_id = Integer.parseInt(request.getParameter("o_id"));
		Order existingOrder = orderDAO.selectOrder(o_id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("order-form.jsp");
		request.setAttribute("order", existingOrder);
		dispatcher.forward(request, response);

	}

	private void insertOrder(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		int o_quantity = Integer.parseInt(request.getParameter("o_quantity"));
		String o_date = request.getParameter("o_date");
		Order newOrder = new Order(p_id, u_id,o_quantity,o_date);
		orderDAO.insertOrder(newOrder);
		response.sendRedirect("list3");
	}

	private void updateOrder(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int o_id = Integer.parseInt(request.getParameter("o_id"));
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		int u_id = Integer.parseInt(request.getParameter("u_id"));
		int o_quantity = Integer.parseInt(request.getParameter("o_quantity"));
		String o_date = request.getParameter("o_date");

		Order book = new Order(o_id,p_id, u_id,o_quantity,o_date);
		orderDAO.updateOrder(book);
		response.sendRedirect("list3");
	}

	private void deleteOrder(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int o_id = Integer.parseInt(request.getParameter("o_id"));
		orderDAO.deleteOrder(o_id);
		response.sendRedirect("list3");

	}

}
