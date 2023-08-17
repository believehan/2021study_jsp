package ch07;

import java.sql.*;
import java.util.*;

public class beantest01 {
	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/tabledb";
	private final String USER = "root";
	private final String PASS = "1234";
	
	public beantest01() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch(Exception ex) {
			System.out.println("Exception : " + ex);
		}
	}
	public Vector<BeanTest5> getBeanList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<BeanTest5> vlist = new Vector<BeanTest5>();
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tabledb", "root", "1234");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from usertbl");
			while(rs.next()) {
				BeanTest5 bean = new BeanTest5();
				bean.setUserid(rs.getString("Userid"));
				bean.setName(rs.getString("Name"));
				bean.setBirthyear(rs.getString("Birthyear"));
				bean.setAddr(rs.getString("Addr"));
				bean.setMobile1(rs.getString("Mobile1"));
				bean.setMobile2(rs.getString("Mobile2"));
				bean.setHeight(rs.getString("Height"));
				bean.setMdate(rs.getString("Mdate"));
				vlist.addElement(bean);
			}
		} catch(Exception ex) {
			System.out.println("Exception : " + ex);
		} finally {
			if(rs != null) {
				try { rs.close(); } catch(SQLException e) { } }
			if(stmt != null) {
				try { stmt.close(); } catch(SQLException e) { }}
			if(conn != null) {
				try { conn.close(); } catch(SQLException e) { }}
		}
		return vlist;

	}
}
