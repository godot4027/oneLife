package admin.week.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import admin.week.model.vo.Search;
import admin.week.model.vo.Week;
import common.PageInfo;
public class WeekDao {
	private Properties query = new Properties();
	
	public WeekDao() {
		String fileName = WeekDao.class.getResource("/sql/week/week-query.xml").getPath();
		
		try {
			query.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 목록 전체 조회
	public List<Week> weekSelectList(Connection conn, PageInfo pi, Search sc) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = query.getProperty("weekSelectList");
		List<Week> wList = new ArrayList<>();
		
		// 검색 조건이있을시
		if(sc.getsType() != null && sc.getsReveal() != null) {
			sql = query.getProperty("weekSelectSearchList");
			
			// 일정 타입
			if(sc.getsType().equals("all")) {
				sql += " WHERE SC_CATE_CODE IS NOT NULL ";
			}else {
				sql += " WHERE SC_CATE_CODE = ? ";
			}
			
			// 공개 여부
			if(sc.getsReveal().equals("all")) {
				sql += "AND SC_STATUS IS NOT NULL ";
			}else {
				sql += "AND SC_STATUS = ? ";
			}
			
			// 전체조회가 체크했을시 일정조회
			if(sc.getAllDay() != null && sc.getAllDay().equals("on")) {
				sql += "AND SC_OPEN_DATE IS NOT NULL ";
			}else {
				sql += "AND TO_CHAR(SC_OPEN_DATE, 'YYYY-MM-DD') = ? ";
			}
			
			// 검색조건
			if(sc.getSearchName().equals("content") && sc.getSearchValue() != null) {
				sql += "AND SC_TITLE LIKE '%' || ? || '%' ";
			}else {
				sql += "AND SC_TITLE IS NOT NULL ";
			}
			
			sql += " ORDER BY SC_NO DESC)) "
				+ " WHERE ROWN BETWEEN ? AND ? ";
			
		}
		
		try {
			int startRow = (pi.getPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			int paramIndex = 1;
			
			pstmt = conn.prepareStatement(sql);
			
			// 검색결과가 있을시
			if(sc.getsType() != null && sc.getsReveal() != null) {
				// 일정 타입
				if(sc.getsType().equals("all")) {
				}else {
					pstmt.setString(paramIndex++, sc.getsType());
				}
				
				// 공개 여부
				if(sc.getsReveal().equals("all")) {
				}else {
					pstmt.setString(paramIndex++, sc.getsReveal());
				}
				
				// 전체조회가 체크했을시 일정조회
				if(sc.getAllDay() != null && sc.getAllDay().equals("on")) {
				}else {
					pstmt.setString(paramIndex++, sc.getSearchDay());
				}
				
				// 검색조건
				if(sc.getSearchName().equals("content") && sc.getSearchValue() != null) {
					pstmt.setString(paramIndex++, sc.getSearchValue());
				}
			}
			
			// System.out.println(sql);
			pstmt.setInt(paramIndex++, startRow);
			pstmt.setInt(paramIndex++, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Week week = new Week();
				week.setScNo(rset.getInt("SC_NO"));
				week.setScOpenDate(rset.getDate("SC_OPEN_DATE"));
				week.setScTitle(rset.getString("SC_TITLE"));
				week.setScContent(rset.getString("SC_CONTENT"));
				week.setInDate(rset.getDate("SC_IN_DATE"));
				week.setScStatus(rset.getString("SC_STATUS").charAt(0));
				week.setScCateCode(rset.getString("SC_CATE_CODE"));
				week.setScCateName(rset.getString("SC_CATE_NAME"));
				
				wList.add(week);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return wList;
	}

	// 게시글 갯수 구하기
	public int listCount(Connection conn, Search sc) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String sql = query.getProperty("listCount");
		
		// 검색결과가있을시
		if(sc.getsType() != null && sc.getsReveal() != null) {
			// 일정 타입
			if(sc.getsType().equals("all")) {
				sql += "WHERE SC_CATE_CODE IS NOT NULL ";
			}else {
				sql += "WHERE SC_CATE_CODE = ? ";
			}
			
			// 공개 여부
			if(sc.getsReveal().equals("all")) {
				sql += "AND SC_STATUS IS NOT NULL ";
			}else {
				sql += "AND SC_STATUS = ? ";
			}
			
			// 전체조회가 체크했을시 일정조회
			if(sc.getAllDay() != null && sc.getAllDay().equals("on")) {
				sql += "AND SC_OPEN_DATE IS NOT NULL ";
			}else {
				sql += "AND TO_CHAR(SC_OPEN_DATE, 'YYYY-MM-DD') = ? ";
			}
			
			// 검색조건
			if(sc.getSearchName().equals("content") && sc.getSearchValue() != null) {
				sql += "AND SC_TITLE LIKE '%' || ? || '%' ";
			}else {
				sql += "AND SC_TITLE IS NOT NULL ";
			}
			
		}
		
		
		try {
			int paramIndex = 1;
			pstmt = conn.prepareStatement(sql);
			// System.out.println(sql);
			
			if(sc.getsType() != null && sc.getsReveal() != null) {
				// 일정 타입
				if(sc.getsType().equals("all")) {
				}else {
					pstmt.setString(paramIndex++, sc.getsType());
				}
				
				// 공개 여부
				if(sc.getsReveal().equals("all")) {
				}else {
					pstmt.setString(paramIndex++, sc.getsReveal());
				}
				
				// 전체조회가 체크했을시 일정조회
				if(sc.getAllDay() != null && sc.getAllDay().equals("on")) {
				}else {
					pstmt.setString(paramIndex++, sc.getSearchDay());
				}
				
				// 검색조건
				if(sc.getSearchName().equals("content") && sc.getSearchValue() != null) {
					pstmt.setString(paramIndex++, sc.getSearchValue());
				}else {
					
				}
				
			}
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("COUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	// 아이디로 조회
	public Week selectOneList(Connection conn, int scNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = query.getProperty("selectOneList");
		Week week = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, scNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				week = new Week();
				week.setScNo(rset.getInt("SC_NO"));
				week.setScOpenDate(rset.getDate("SC_OPEN_DATE"));
				week.setScTitle(rset.getString("SC_TITLE"));
				week.setScContent(rset.getString("SC_CONTENT"));
				week.setInDate(rset.getDate("SC_IN_DATE"));
				week.setScStatus(rset.getString("SC_STATUS").charAt(0));
				week.setScCateCode(rset.getString("SC_CATE_CODE"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return week;
	}
	// 게시글 전체갯수 구하기
	public int maxCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String sql = query.getProperty("maxCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("MAX");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	// 게시글 추가
	public int insertWeek(Connection conn, int maxCount, Week week) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("insertWeek");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, maxCount + 1);
			pstmt.setDate(2, week.getScOpenDate());
			pstmt.setString(3, week.getScTitle());
			pstmt.setString(4, week.getScContent());
			pstmt.setString(5, week.getScStatus() + "");
			pstmt.setString(6, week.getScCateCode());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	// 게시글 수정
	public int updateWeek(Connection conn, Week week) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("updateWeek");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, week.getScStatus() + "");
			pstmt.setDate(2, week.getScOpenDate());
			pstmt.setString(3, week.getScCateCode());
			pstmt.setString(4, week.getScTitle());
			pstmt.setString(5, week.getScContent());
			pstmt.setInt(6, week.getScNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	// 게시글 삭제(비공개로 변경)
	public int removeWeek(Connection conn, String[] weeks) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("removeWeek");
		
		for(int i = 0; i < weeks.length; i++) {
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(weeks[i]));
				
				result += pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
		}
		
		return result;
	}
}

