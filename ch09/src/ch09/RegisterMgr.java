package ch09;

import java.sql.*;

public class RegisterMgr {
	private DBConnectionMgr pool;
	
	public RegisterMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			System.out.print("ERROR : 커넥션 연결 상태");
		}
	}
	public boolean loginRegister(String id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginCon = false;
		try {
			con = pool.getConnection();
			String query = "select count(*) from buytbl where num=? and userid=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next() && rs.getInt(1) > 0)
				loginCon = true;
		} catch(Exception e) {
			System.out.print("Exception : " + e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return loginCon;
	}
}
