package com.ManageDeliveries;

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
 * requests from the user.
 * 
 */

@WebServlet("/DeliveryPersonServlet")
public class DeliveryPersonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DeliveryPersonDAO deliverypersonDAO;
	
	public void init() {
		deliverypersonDAO = new DeliveryPersonDAO();
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
			case "/new2":
				showNewForm(request, response);
				break;
			case "/insert2":
				insertDeliveryPerson(request, response);
				break;
			case "/delete2":
				deleteDeliveryPerson(request, response);
				break;
			case "/edit2":
				showEditForm(request, response);
				break;
			case "/update2":
				updateDeliveryPerson(request, response);
				break;
			case "/list2":
				listDeliveryPerson(request, response);
				break;	
			default:
				System.out.println("Servelet");
				
			}
			
			
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listDeliveryPerson(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<DeliveryPerson> listDeliveryPerson = deliverypersonDAO.selectAllDeliveryPerson();
		request.setAttribute("listDeliveryPerson", listDeliveryPerson);
		RequestDispatcher dispatcher = request.getRequestDispatcher("delivery-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("delivery-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int delivery_id = Integer.parseInt(request.getParameter("delivery_id"));
		DeliveryPerson existingDeliveryPerson = deliverypersonDAO.selectDeliveryPerson(delivery_id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("delivery-form.jsp");
		request.setAttribute("deliveryperson", existingDeliveryPerson);
		dispatcher.forward(request, response);

	}
	
	

	private void insertDeliveryPerson(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int order_id = Integer.parseInt(request.getParameter("order_id"));
		int cus_id = Integer.parseInt(request.getParameter("cus_id"));
		String address = request.getParameter("address");
		String status = request.getParameter("status");
		String estimate_time = request.getParameter("estimate_time");
		String actual_del_time = request.getParameter("actual_del_time");
		DeliveryPerson newDeliveryPerson = new DeliveryPerson(order_id, cus_id, address, status, estimate_time, actual_del_time);
		deliverypersonDAO.insertDeliveryPerson(newDeliveryPerson);
		response.sendRedirect("list2");
	}

	private void updateDeliveryPerson(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int delivery_id = Integer.parseInt(request.getParameter("delivery_id"));
		int order_id = Integer.parseInt(request.getParameter("order_id"));
		int cus_id = Integer.parseInt(request.getParameter("cus_id"));
		String address = request.getParameter("address");
		String status = request.getParameter("status");
		String estimate_time = request.getParameter("estimate_time");
		String actual_del_time = request.getParameter("actual_del_time");

		DeliveryPerson book = new DeliveryPerson(delivery_id, order_id, cus_id, address, status, estimate_time, actual_del_time);
		deliverypersonDAO.updateDeliveryPerson(book);
		response.sendRedirect("list2");
	}

	private void deleteDeliveryPerson(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int delivery_id = Integer.parseInt(request.getParameter("delivery_id"));
		deliverypersonDAO.deleteDeliveryPerson(delivery_id);
		response.sendRedirect("list2");

	}

}
