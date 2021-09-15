package member.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;

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
}
