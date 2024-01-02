package com.ManageDeliveries;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table DeliveryPerson in the database.
 * 
 * 
 *
 */
public class DeliveryPersonDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/yumride?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "sadee";

	private static final String INSERT_DeliveryPerson_SQL = "INSERT INTO deliveries" + "  (order_id, cus_id, address, status, estimate_time, actual_del_time) VALUES "
			+ " (?, ?, ?, ?, ?, ?);";

	private static final String SELECT_DeliveryPerson_BY_ID = "select delivery_id, order_id, cus_id, address, status, estimate_time, actual_del_time from deliveries where delivery_id =?";
	private static final String SELECT_ALL_DeliveryPerson = "select * from deliveries";
	private static final String DELETE_DeliveryPerson_SQL = "delete from deliveries where delivery_id = ?;";
	private static final String UPDATE_DeliveryPerson_SQL = "update deliveries set order_id=?, cus_id=?, address=?, status=?, estimate_time=?, actual_del_time=? where delivery_id = ?;";

	public DeliveryPersonDAO() {
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

	public void insertDeliveryPerson(DeliveryPerson deliveryperson) throws SQLException {
		System.out.println(INSERT_DeliveryPerson_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_DeliveryPerson_SQL)) {
			preparedStatement.setInt(1, deliveryperson.getOrder_id());
			preparedStatement.setInt(2, deliveryperson.getCus_id());
			preparedStatement.setString(3, deliveryperson.getAddress());
			preparedStatement.setString(4, deliveryperson.getStatus());
			preparedStatement.setString(5, deliveryperson.getEstimate_time());
			preparedStatement.setString(6, deliveryperson.getActual_del_time());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}

	public DeliveryPerson selectDeliveryPerson(int delivery_id) {
		DeliveryPerson deliveryperson = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_DeliveryPerson_BY_ID);) {
			preparedStatement.setInt(1, delivery_id);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int order_id = rs.getInt("order_id");
				int cus_id = rs.getInt("cus_id");
				String address = rs.getString("address");
				String status = rs.getString("status");
				String estimate_time = rs.getString("estimate_time");
				String actual_del_time = rs.getString("actual_del_time");
				deliveryperson = new DeliveryPerson(delivery_id,order_id, cus_id, address, status, estimate_time, actual_del_time);
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return deliveryperson;
	}

	public List<DeliveryPerson> selectAllDeliveryPerson() {

		// using try-with-resources to avoid closing resources (boiler plate code)
		List<DeliveryPerson> deliveryperson = new ArrayList<>();
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();

				// Step 2:Create a statement using connection object
			PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_DeliveryPerson);) {
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				int delivery_id = rs.getInt("delivery_id");
				int order_id = rs.getInt("order_id");
				int cus_id = rs.getInt("cus_id");
				String address = rs.getString("address");
				String status = rs.getString("status");
				String estimate_time = rs.getString("estimate_time");
				String actual_del_time = rs.getString("actual_del_time");
				deliveryperson.add(new DeliveryPerson(delivery_id, order_id, cus_id, address, status, estimate_time, actual_del_time));
			}
		} catch (SQLException e) {
			printSQLException(e);
		}
		return deliveryperson;
	}

	public boolean deleteDeliveryPerson(int delivery_id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_DeliveryPerson_SQL);) {
			statement.setInt(1, delivery_id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

	public boolean updateDeliveryPerson(DeliveryPerson deliveryperson) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_DeliveryPerson_SQL);) {
			statement.setInt(1, deliveryperson.getOrder_id());
			statement.setInt(2, deliveryperson.getCus_id());
			statement.setString(3, deliveryperson.getAddress());
			statement.setString(4, deliveryperson.getStatus());
			statement.setString(5, deliveryperson.getEstimate_time());
			statement.setString(6, deliveryperson.getActual_del_time());
			statement.setInt(7, deliveryperson.getDelivery_id());

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
