package loginmember;

import java.sql.*;

import loginmember.MemberBean;
import loginmember.DBConnectionMgr;

public class MemberMgr {
private DBConnectionMgr pool;

	public MemberMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			System.out.print("ERROR : 커넥션 연결 상태");
		}
	}
	public boolean checkId(String id) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean loginCon = false;
		try {
			con = pool.getConnection();
			String query = "select id from tblmember where id=?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			loginCon=rs.next();
		} catch(Exception e) {
			System.out.println("Exception : " + e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return loginCon;
	}
	
	public boolean insertMember(MemberBean bean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		String sql = null;
		boolean flag = false;
		try {
			con = pool.getConnection();
			sql = "insert tblmember (id, pw, name, gender, birthday, email, zipcode, address, detailAddress, phone, subject, hometown) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPw());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getGender());
			pstmt.setString(5, bean.getBirthday());
			pstmt.setString(6, bean.getEmail());
			pstmt.setString(7, bean.getZipcode());
			pstmt.setString(8, bean.getAddress());
			pstmt.setString(9, bean.getDetailAddress());
			pstmt.setString(10, bean.getPhone());
			String subject[] = bean.getSubject();
			char sj[] = {'0', '0', '0', '0', '0'};
			String lists[] = {"웹페이지", "AI", "빅데이터", "디자인", "JAVA"};
			for(int i=0; i< subject.length; i++) {
				for(int j=0; j<lists.length; j++) {
					if(subject[i].equals(lists[j]))
						sj[j] = '1';
				}
			}
			pstmt.setString(11, new String(sj));
			pstmt.setString(12, bean.getHometown());
			
			if(pstmt.executeUpdate() == 1)
				flag=true;
		} catch(Exception e) {
			System.out.println("Exception : " + e);
		} finally {
			pool.freeConnection(con, pstmt);
		}
		return flag;
		
	}
	
	public boolean loginMember(String id, String pw) {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	boolean loginCon = false;
	try {
		con = pool.getConnection();
		String query = "select id from tblmember where id=? and pw=?";
		pstmt = con.prepareStatement(query);
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		rs = pstmt.executeQuery();
		loginCon=rs.next();
	} catch(Exception e) {
		System.out.println("Exception : " + e);
	} finally {
		pool.freeConnection(con, pstmt, rs);
	}
	return loginCon;
	}
}
