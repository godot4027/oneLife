package user.member.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import user.member.model.vo.Member;

public class MemberDao {
private Properties query = new Properties();
	
	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.xml").getPath()	;
		
		try {
			query.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public Member loginMember(Connection conn, String id, String pwd) {
		Member loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = query.getProperty("loginMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				loginUser = new Member(rset.getInt("u_no"),
						rset.getString("u_id"),
						rset.getString("u_nickname"),
						rset.getString("u_pw"),
						rset.getString("u_phone"),
						rset.getDate("reg_date"),
						rset.getDate("mod_date"),
						rset.getString("u_status"),
						rset.getInt("r_dong"),
						rset.getInt("r_ho"),
						rset.getString("r_name"),
						rset.getString("r_email"),
						rset.getString("r_type"),
						rset.getString("r_status"),
						rset.getDate("r_date"),
						rset.getInt("r_no"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}	
		
		return loginUser;
	}

	// 2. 회원가입 기능
	public int insertMember(Connection conn, Member mem) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = query.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mem.getU_ID());
			pstmt.setString(2, mem.getU_NICKNAME());
			pstmt.setString(3, mem.getU_PW());
			pstmt.setString(4, mem.getU_PHONE());
			pstmt.setInt(5, mem.getR_NO());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int checkR(Connection conn, String name, String email) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null; 
		String sql = query.getProperty("checkR");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			
			rset = pstmt.executeQuery();
			if (rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return result;
	}

	// 아이디 중복 체크 
	public int idCheck(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String sql = query.getProperty("idCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return result;
	}

	public int nickCheck(Connection conn, String nickName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String sql = query.getProperty("nickCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nickName);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return result;
	}

	// 회원 상태 바꾸기
	public int changeStatus(Connection conn, int rno) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = query.getProperty("changeStatus");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, rno);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
