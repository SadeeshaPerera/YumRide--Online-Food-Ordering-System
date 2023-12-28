package com.ManageOrders;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table orders in the database.
 * 
 * 
 *
 */
public class OrderDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/yumride?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "sadee";

	private static final String INSERT_ORDERS_SQL = "INSERT INTO orders" + "  (p_id, u_id,o_quantity,o_date) VALUES "
			+ " (?, ?, ?, ?);";

	private static final String SELECT_ORDER_BY_ID = "select o_id,p_id, u_id,o_quantity,o_date from orders where o_id =?";
	private static final String SELECT_ALL_ORDERS = "select * from orders";
	private static final String DELETE_ORDERS_SQL = "delete from orders where o_id = ?;";
	private static final String UPDATE_ORDERS_SQL = "update orders set p_id = ?,u_id= ?, o_quantity =?, o_date =? where o_id = ?;";

	public OrderDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertOrder(Order order) throws SQLException {
		System.out.println(INSERT_ORDERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ORDERS_SQL)) {
			preparedStatement.setInt(1, order.getP_id());
			preparedStatement.setInt(2, order.getU_id());
			preparedStatement.setInt(3, order.getO_quantity());
			preparedStatement.setString(4, order.getO_date());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public Order selectOrder(int o_id) {
		Order order = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ORDER_BY_ID);) {
			preparedStatement.setInt(1, o_id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int p_id = rs.getInt("p_id");
				int u_id = rs.getInt("u_id");
				int o_quantity = rs.getInt("o_quantity");
				String o_date = rs.getString("o_date");
				order = new Order(o_id,p_id, u_id,o_quantity,o_date);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return order;
	}

	public List<Order> selectAllOrders() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<Order> orders = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ORDERS);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int o_id = rs.getInt("o_id");
				int p_id = rs.getInt("p_id");
				int u_id = rs.getInt("u_id");
				int o_quantity = rs.getInt("o_quantity");
				String o_date = rs.getString("o_date");
				orders.add(new Order(o_id,p_id, u_id,o_quantity,o_date));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return orders;
	}

	public boolean deleteOrder(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_ORDERS_SQL);) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateOrder(Order order) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_ORDERS_SQL);) {
			statement.setInt(1, order.getP_id());
			statement.setInt(2, order.getU_id());
			statement.setInt(3, order.getO_quantity());
			statement.setString(4, order.getO_date());
			statement.setInt(5, order.getO_id());

			rowUpdated = statement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
