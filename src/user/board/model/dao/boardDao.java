package user.board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import user.board.model.vo.Board;
import user.board.model.vo.Board_Comment;
import user.board.model.vo.PageInfo;
import user.board.model.vo.Search;

import static common.JDBCTemplate.close;


public class boardDao {
	private Properties query = new Properties();
	
	public boardDao() {
		String fileNme = boardDao.class.getResource("/sql/board/board-query.xml").getPath();
		try {
			query.loadFromXML(new FileInputStream(fileNme));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 게시글 총 개수 구하기 (select 구문 수행)
	public int getListCount(Connection conn, Search s) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int listCount = 0;
		String sql = query.getProperty("getListCount");
		
		if (s.getSearchCondition() != null && s.getSearchValue() != null) {
			if (s.getSearchCondition().equals("title")) {    // 제목 검색
				sql = query.getProperty("getTitleListCount");
			} else if(s.getSearchCondition().equals("content")) {  // 내용 검색
				sql = query.getProperty("getContentListCount");
			} else if(s.getSearchCondition().equals("writer")) {  // 작성자 검색
				sql = query.getProperty("getWriterListCount");
			}
		}
		
		
		try {
			pstmt= conn.prepareStatement(sql);
			
			if (s.getSearchCondition() != null && s.getSearchValue() != null) {
				pstmt.setString(1, s.getSearchValue());
			}
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}

	// 페이징 처리 된 BoardList 조회
	public List<Board> selectList(Connection conn, PageInfo pi, Search s) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Board> boardList = new ArrayList<>();
		String sql = query.getProperty("selectsearchList");
		
		// 검색 조건과 검색 값이 넘어왔을 경우
		if(s.getSearchCondition() != null && s.getSearchValue() != null) {
			if (s.getSearchCondition().equals("title")) {    // 제목 검색
				sql = query.getProperty("selecTitleList");
			} else if(s.getSearchCondition().equals("content")) {  // 내용 검색
				sql = query.getProperty("selecContentList");
			} else if(s.getSearchCondition().equals("writer")) {   // 작성자 검색
				sql = query.getProperty("selecWriterList");
			}
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			int paramIndex = 1;
			
			// 검색 조건과 검색 값이 넘어온 경우
			if(s.getSearchCondition() != null && s.getSearchValue() != null) {
				pstmt.setString(paramIndex++, s.getSearchValue());
			}
			
			pstmt.setInt(paramIndex++, startRow);
			pstmt.setInt(paramIndex++, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				boardList.add(new Board(rset.getInt("b_no"),
												  rset.getString("b_title"),
												  rset.getString("b_content"),
												  rset.getTimestamp("b_enroll_date"),
												  rset.getTimestamp("b_modify_date"),
												  rset.getInt("b_count"),
												  rset.getString("b_status"),
												  rset.getInt("u_no"),
												  rset.getString("u_nickname") ));
												 
												  
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return boardList;
	}

	// 자유게시판 글 작성
	public int insertBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("insertBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getB_title());
			pstmt.setString(2, b.getB_content());
			pstmt.setInt(3, b.getU_no());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 게시글 b_no 번호 가져오기
	public int selectBoardNo(Connection conn) {
		 int b_no = 0;
	      PreparedStatement pstmt = null;
	      String sql = query.getProperty("selectbno");
	      ResultSet rset = null;
	      
	      try {
	         pstmt = conn.prepareStatement(sql);
	         rset = pstmt.executeQuery();
	         

	         if (rset.next()) {
	        	 b_no = rset.getInt(1);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(pstmt);
	         close(rset);
	      }
	      
	      return b_no;
	}

	// 조회수 증가
	public int increaseCount(Connection conn, int b_no) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("increaseCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, b_no);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 게시글 1개 조회
	public Board selectBoard(Connection conn, int b_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board b = null;
		String sql = query.getProperty("selectBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b_no);
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				b = new Board(rset.getInt("b_no"),
							  rset.getString("b_title"),
							  rset.getString("b_content"),
							  rset.getTimestamp("b_enroll_date"),
							  rset.getTimestamp("b_modify_date"),
							  rset.getInt("b_count"),
							  rset.getString("b_status"),
							  rset.getInt("u_no"),
							  rset.getString("u_nickname"),
							  rset.getInt("bc_no") );
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return b;
	}

	// 게시글 수정
	public int updateBoard(Connection conn, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("updateBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, b.getB_title());
			pstmt.setString(2, b.getB_content());
			pstmt.setInt(3, b.getB_no());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 게시글 삭제
	public int deleteBoard(Connection conn, int b_no) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("deleteBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, b_no);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	// 댓글 작성
	public int insertReply(Connection conn, Board_Comment b) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("insertReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b.getB_no());
			pstmt.setString(2, b.getBc_content());
			pstmt.setInt(3, b.getU_no());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	// 댓글 조회
	public List<Board_Comment> selectReplyList(Connection conn, int b_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Board_Comment> replayList = new ArrayList<>();
		String sql = query.getProperty("selectReplyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b_no);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				replayList.add(new Board_Comment(rset.getInt("bc_no"),
										rset.getInt("b_no"),
										rset.getString("bc_content"),
										rset.getTimestamp("bc_enroll_date"),
										rset.getTimestamp("bc_modify_date"),
										rset.getString("bc_status"),
										rset.getInt("u_no"),
										rset.getString("u_nickname")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return replayList;
	}
	
	
	
	

//
//	// 1. 건의합니다 목록 조회
////	public List<complaint> selectList(Connection conn) {
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		List<complaint> complaintList = new ArrayList<>();
//		String sql = query.getProperty("selectList");
//		
//		try {
//			pstmt = conn.prepareStatement(sql);
//			
//			rset = pstmt.executeQuery();
//			
//			
//			while(rset.next()) {
//				complaintList.add(new complaint(rset.getInt("c_no"),
//										  rset.getString("c_title"),
//										  rset.getString("c_content"),
//										  rset.getTimestamp("enroll_date"),
//										  rset.getTimestamp("modify_date"),
//										  rset.getString("open"),
//										  rset.getString("status"),
//										  rset.getInt("u_no"),
//										  rset.getString("u_id"),
//										  rset.getInt("r_dong"),
//										  rset.getInt("r_ho"),
//										  rset.getString("r_name")));
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close(rset);
//			close(pstmt);
//		}
//		
//		
//		return complaintList;
//	}
//
//	
	
//




//	// 9. 댓글 삭제 
//	public int deleteReply(Connection conn, complaint_manager r) {
//		PreparedStatement pstmt = null;
//		int result = 0;
//		String sql = query.getProperty("deleteReply");
//		
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, r.getCm_no());
//			
//			result = pstmt.executeUpdate();
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close(pstmt);
//		}
//		
//		return result;
//	}
//
//	// 10. 댓글 전체 조회
//	public List<complaint_manager> selectList(Connection conn) {
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		List<complaint_manager> complaintmanList = new ArrayList<>();
//		String sql = query.getProperty("selectList");
//		
//		try {
//			pstmt = conn.prepareStatement(sql);
//			
//			rset = pstmt.executeQuery();
//			
//			
//			while(rset.next()) {
//				complaintmanList.add(new complaint_manager(rset.getInt("cm_no"),
//										  rset.getInt("c_no"),
//										  rset.getString("cm_content"),
//										  rset.getTimestamp("cm_enroll_date"),
//										  rset.getTimestamp("cm_modify_date"),
//										  rset.getString("cm_status"),
//										  rset.getInt("m_no")));
//										
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close(rset);
//			close(pstmt);
//		}
//		
//		
//		return complaintmanList;
//	}
//
//	
//	
	
	

}
