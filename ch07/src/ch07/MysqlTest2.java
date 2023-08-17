package ch07;

import java.sql.*;

public class MysqlTest2 {

	public static void main(String[] args) {
		Connection con;
		try {
			Class.forName("com.mysql.jdqc.Drivar");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "1234");
			System.out.println("Success");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("show databases");
			while(rs.next()) {
				String str = rs.getNString(1);
				System.out.println(str);
			}
		} catch(SQLException e) {
			System.out.println("SQLException : " + e);
		} catch(Exception e) {
			System.out.println("SQLException : " + e);
		}
	}

}
