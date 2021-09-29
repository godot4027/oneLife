package user.amenities.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import user.amenities.model.vo.Facility;
import user.amenities.model.vo.PageInfo;
import user.amenities.model.vo.Search;

import static common.JDBCTemplate.close;


public class amenitiesDao {
	private Properties query = new Properties();
	
	public amenitiesDao() {
		String fileNme = amenitiesDao.class.getResource("/sql/amenities/amenities-query.xml").getPath();
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
			
			
			if (s.getMydate() != null) {
				sql = query.getProperty("getWriterListCount");
			}
			
			try {
				pstmt= conn.prepareStatement(sql);
				pstmt.setInt(1, s.getU_no());
				
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

		// 페이징 처리 된 studyRoomList 조회
		public List<Facility> selectList(Connection conn, PageInfo pi, Search s) {
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			List<Facility> studyRoomList = new ArrayList<>();
			String sql = query.getProperty("selectsearchList");
				
			if (s.getMydate() != null) {
				sql = query.getProperty("selecWriterList");
			}
			
			try {
				pstmt = conn.prepareStatement(sql);
				
				int startRow = (pi.getPage() - 1) * pi.getBoardLimit() + 1;
				int endRow = startRow + pi.getBoardLimit() - 1;
				int paramIndex = 1;
				
				
				
				if (s.getMydate() != null) {
					pstmt.setString(paramIndex++, s.getMydate());
					pstmt.setInt(paramIndex++, s.getU_no());
				} else {
					pstmt.setInt(paramIndex++, s.getU_no());
				}
				
				
				pstmt.setInt(paramIndex++, startRow);
				pstmt.setInt(paramIndex++, endRow);
				
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					studyRoomList.add(new Facility(rset.getInt("fc_no"),
												  rset.getString("fc_name"),
												  rset.getInt("fc_seat_no"),
												  rset.getDate("fc_date"),
												  rset.getDate("fc_start"),
												  rset.getDate("fc_end"),
												  rset.getInt("u_no"),
												  rset.getString("fc_status")));
													  
													  
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			
			return studyRoomList;
		}

		



	
	
	
	

}
