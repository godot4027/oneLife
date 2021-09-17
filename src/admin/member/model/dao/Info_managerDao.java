package admin.member.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import admin.member.model.vo.Info_manager;
import user.member.model.vo.Member;

public class Info_managerDao {
private Properties query = new Properties();
	
	public Info_managerDao() {
		String fileName = Info_managerDao.class.getResource("/sql/member/member-query.xml").getPath()	;
		
		try {
			query.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public Info_manager loginUser_man(Connection conn, String userId, String userPwd) {
		Info_manager loginUser_man = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = query.getProperty("loginUser_man");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				loginUser_man = new Info_manager(rset.getInt("m_no"),
												rset.getString("m_id"),
												rset.getString("m_password"),
												rset.getString("m_name"),
												rset.getString("m_nick"),
												rset.getString("m_phone"),
												rset.getString("m_jobcode"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}	
		
		return loginUser_man;
	}
}
