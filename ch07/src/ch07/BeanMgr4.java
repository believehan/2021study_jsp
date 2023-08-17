package ch07;

import java.sql.*;
import java.util.Vector;

public class BeanMgr4 {
	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/tabledb";
	private final String USER = "root";
	private final String PASS = "1234";
	
	public BeanMgr4() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch(Exception ex) {
			System.out.println("Exception : " + ex);
		}
	}
	//javaBean에 DB에서 얻어온 결과넣는 메소드
	public Vector<BeanTest4> getBeanList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<BeanTest4> vlist = new Vector<BeanTest4>();
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tabledb", "root", "1234");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from buytbl");
			while(rs.next()) {
				BeanTest4 bean = new BeanTest4();
				bean.setNum(rs.getString("Num"));
				bean.setUserid(rs.getString("Userid"));
				bean.setProdname(rs.getString("Prodname"));
				bean.setGroupname(rs.getString("Groupname"));
				bean.setPrice(rs.getString("Price"));
				bean.setAmount(rs.getString("Amount"));
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
