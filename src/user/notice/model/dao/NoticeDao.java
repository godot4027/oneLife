package user.notice.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;



import static common.JDBCTemplate.close;
import user.notice.model.vo.Notice;

public class NoticeDao {
	private Properties query = new Properties();
	
	public NoticeDao() {
		String fileNme = NoticeDao.class.getResource("/sql/notice/notice-query.xml").getPath();
		try {
			query.loadFromXML(new FileInputStream(fileNme));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 1. 공지사항 목록 조회
	public List<Notice> selectList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Notice> noticeList = new ArrayList<>();
		String sql = query.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				noticeList.add(new Notice(rset.getInt("n_no"),
										  rset.getString("n_title"),
										  rset.getString("n_content"),
										  rset.getInt("n_count"),
										  rset.getDate("enroll_date"),
										  rset.getDate("modify_date"),
										  rset.getString("status"),
										  rset.getInt("m_no"),
										  rset.getString("m_nick")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return noticeList;
	}

	// 2. 게시글 조회 시 조회수 증가
	public int increaseCount(Connection conn, int n_no) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, n_no);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 3. 게시글 1개 조회
	public Notice selectNotice(Connection conn, int n_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Notice n = null;
		String sql = query.getProperty("selectNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, n_no);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice(rset.getInt("n_no"),
						  rset.getString("n_title"),
						  rset.getString("n_content"),
						  rset.getInt("n_count"),
						  rset.getDate("enroll_date"),
						  rset.getDate("modify_date"),
						  rset.getString("status"),
						  rset.getInt("m_no"),
						  rset.getString("m_nick"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return n;
	}

	// 4. 공지사항 글 작성
	public int insertNotice(Connection conn, Notice n) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("insertNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, n.getN_title());
			pstmt.setString(2, n.getN_content());
			pstmt.setInt(3, n.getM_no());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 5. 공지사항 글 수정
	public int updateNotice(Connection conn, Notice n) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("updateNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, n.getN_title());
			pstmt.setString(2, n.getN_content());
			pstmt.setInt(3, n.getN_no());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	// 6. 공지사항 글 삭제
	public int deleteNotice(Connection conn, int n_no) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("deleteNotice");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, n_no);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 7. 공지사항 no번호 가져오기
	public int selectNoticeNo(Connection conn) {
		  int n_no = 0;
	      PreparedStatement pstmt = null;
	      String sql = query.getProperty("selectVid");
	      ResultSet rset = null;
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         rset = pstmt.executeQuery();
	         

	         if (rset.next()) {
	        	 n_no = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return n_no;

	}


	
	
	

}
