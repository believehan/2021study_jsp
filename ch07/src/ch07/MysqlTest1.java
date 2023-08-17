package ch07;

import java.sql.*;

public class MysqlTest1 {

	public static void main(String[] args) {
		Connection con;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "1234");
			System.out.println("Success");
		} catch(SQLException e) {
			System.out.println("SQLException : " + e);
		} catch(Exception e) {
			System.out.println("SQLException : " + e);
		}

	}

}
