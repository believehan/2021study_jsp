package ch07;

import java.sql.*;
import java.util.*;

public class RegisterMgrPool {
	private DBConnectionMgr pool = null;
	
	public RegisterMgrPool() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			System.out.println("Error : 커넥션 얻어오기 실패");
		}
	}
	public Vector<BeanTest4> getRegisterList() {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector<BeanTest4> vlist = new Vector<BeanTest4>();
		try {
			conn=pool.getConnection();
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
		} catch(Exception e) {
			System.out.println("exception : "+ e);
		} finally {
			pool.freeConnection(conn);
	}
	return vlist;
	}
}
