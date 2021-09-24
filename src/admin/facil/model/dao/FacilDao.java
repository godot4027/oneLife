package admin.facil.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import admin.facil.model.vo.Facil;
import admin.facil.model.vo.Search;
import common.PageInfo;

import static common.JDBCTemplate.*;


public class FacilDao {
	
private Properties query = new Properties();
	
	public FacilDao() {
		String fileName = FacilDao.class.getResource("/sql/facil/facil-query.xml").getPath();
		
		try {
			query.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 게시글 갯수 조회
	public int getListCount(Connection conn, Search sc) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String sql = query.getProperty("getListCount");
		
		// 검색결과 가 있을시
		if(sc.getFacilName() != null && sc.getFacilType() != null) {
			// 예약 시설
			if(sc.getFacilName().equals("all")) {
				sql += " WHERE FC_NAME IS NOT NULL ";
			}else {
				sql += " WHERE FC_NAME = ? ";
			}
			
			// 예약 타입
			if(sc.getFacilType().equals("all")) {
				sql += " AND FC_SEAT_TYPE IS NOT NULL ";
			}else {
				sql += "AND FC_SEAT_TYPE = ? ";
			}
			
			// 예약 상태
			// 일단보류..
			if(sc.getFacilStatus().equals("all")) {
				sql += "AND FC_STATUS IS NOT NULL ";
			}else if(sc.getFacilStatus().equals("Y")) {
				sql += "AND FC_STATUS = ? ";
			} else {
				sql += "AND FC_STATUS IS NOT NULL ";
			}
			
			// 예약일자
			if(sc.getAllDay() != null && sc.getAllDay().equals("on")) {
				sql += " AND FC_DATE IS NOT NULL ";
			}else {
				sql += " AND TO_CHAR(FC_DATE, 'YYYY-MM-DD') = ? ";
			}
			
			// 검색조건
			if(sc.getSearchName().equals("id") && !sc.getSearchValue().equals("")) {
				sql += " AND U_ID LIKE '%' || ? || '%' ";
			}else if(sc.getSearchName().equals("name") && !sc.getSearchValue().equals("")) {
				sql += " AND R_NAME LIKE '%' || ? || '%' ";
			}else if(sc.getSearchName().equals("phone") && !sc.getSearchValue().equals("")) {
				sql += " AND U_PHONE LIKE '%' || ? || '%' ";
			}
		}
		
		try {
			int paramIndex = 1;
			pstmt = conn.prepareStatement(sql);
			
			// 검색결과 가 있을시
			if(sc.getFacilName() != null && sc.getFacilType() != null) {
				// 예약 시설
				if(sc.getFacilName().equals("all")) {
				}else {
					pstmt.setString(paramIndex++, sc.getFacilName());
				}
				
				// 예약 타입
				if(sc.getFacilType().equals("all")) {
				}else {
					pstmt.setString(paramIndex++, sc.getFacilType());
				}
				
				// 예약 상태
				// 일단보류..
				if(sc.getFacilStatus().equals("all")) {
				}else if(sc.getFacilStatus().equals("Y")) {
					pstmt.setString(paramIndex++, sc.getFacilStatus());
				}
				
				// 예약일자
				if(sc.getAllDay() != null && sc.getAllDay().equals("on")) {
				}else {
					pstmt.setString(paramIndex++, sc.getFacilDay());
				}
				
				// 검색조건
				if(sc.getSearchName().equals("id") && !sc.getSearchValue().equals("")) {
					pstmt.setString(paramIndex++, sc.getSearchValue());
				}else if(sc.getSearchName().equals("name") && !sc.getSearchValue().equals("")) {
					pstmt.setString(paramIndex++, sc.getSearchValue());
				}else if(sc.getSearchName().equals("phone") && !sc.getSearchValue().equals("")) {
					pstmt.setString(paramIndex++, sc.getSearchValue());
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
	
	// 부대시설 목록 조회
	public List<Facil> selectListFacil(Connection conn, PageInfo pi, Search sc) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = query.getProperty("selectListFacil");
		List<Facil> fList = new ArrayList<>();
		
		// 검색결과 가 있을시
		if(sc.getFacilName() != null && sc.getFacilType() != null) {
			sql = query.getProperty("selectSearchListFacil");
			
			// 예약 시설
			if(sc.getFacilName().equals("all")) {
				sql += " WHERE FC_NAME IS NOT NULL ";
			}else {
				sql += " WHERE FC_NAME = ? ";
			}
			
			// 예약 타입
			if(sc.getFacilType().equals("all")) {
				sql += " AND FC_SEAT_TYPE IS NOT NULL ";
			}else {
				sql += "AND FC_SEAT_TYPE = ? ";
			}
			
			// 예약 상태
			// 일단보류..
			if(sc.getFacilStatus().equals("all")) {
				sql += "AND FC_STATUS IS NOT NULL ";
			}else if(sc.getFacilStatus().equals("Y")) {
				sql += "AND FC_STATUS = ? ";
			} else {
				sql += "AND FC_STATUS IS NOT NULL ";
			}
			
			// 예약일자
			if(sc.getAllDay() != null && sc.getAllDay().equals("on")) {
				sql += " AND FC_DATE IS NOT NULL ";
			}else {
				sql += " AND TO_CHAR(FC_DATE, 'YYYY-MM-DD') = ? ";
			}
			
			// 검색조건
			if(sc.getSearchName().equals("id") && !sc.getSearchValue().equals("")) {
				sql += " AND U_ID LIKE '%' || ? || '%' ";
			}else if(sc.getSearchName().equals("name") && !sc.getSearchValue().equals("")) {
				sql += " AND R_NAME LIKE '%' || ? || '%' ";
			}else if(sc.getSearchName().equals("phone") && !sc.getSearchValue().equals("")) {
				sql += " AND U_PHONE LIKE '%' || ? || '%' ";
			}
			
			sql += " ) WHERE ROWN BETWEEN ? AND ?";
		}

		try {
			int startRow = (pi.getPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			int paramIndex = 1;
			
			pstmt = conn.prepareStatement(sql);
			
			// 검색결과 가 있을시
			if(sc.getFacilName() != null && sc.getFacilType() != null) {
				// 예약 시설
				if(sc.getFacilName().equals("all")) {
				}else {
					pstmt.setString(paramIndex++, sc.getFacilName());
				}
				
				// 예약 타입
				if(sc.getFacilType().equals("all")) {
				}else {
					pstmt.setString(paramIndex++, sc.getFacilType());
				}
				
				// 예약 상태
				// 일단보류..
				if(sc.getFacilStatus().equals("all")) {
				}else if(sc.getFacilStatus().equals("Y")) {
					pstmt.setString(paramIndex++, sc.getFacilStatus());
				} else {
				}
				
				// 예약일자
				if(sc.getAllDay() != null && sc.getAllDay().equals("on")) {
				}else {
					pstmt.setString(paramIndex++, sc.getFacilDay());
				}
				
				// 검색조건
				if(sc.getSearchName().equals("id") && !sc.getSearchValue().equals("")) {
					pstmt.setString(paramIndex++, sc.getSearchValue());
				}else if(sc.getSearchName().equals("name") && !sc.getSearchValue().equals("")) {
					pstmt.setString(paramIndex++, sc.getSearchValue());
				}else if(sc.getSearchName().equals("phone") && !sc.getSearchValue().equals("")) {
					pstmt.setString(paramIndex++, sc.getSearchValue());
				}
				
			}
			
			pstmt.setInt(paramIndex++, startRow);
			pstmt.setInt(paramIndex++, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Facil f = new Facil();
				f.setFcNo(rset.getInt("FC_NO"));
				f.setFcName(rset.getString("FC_NAME"));
				f.setFcSeatNo(rset.getInt("FC_SEAT_NO"));
				f.setFcSeatType(rset.getString("FC_SEAT_TYPE"));
				f.setuId(rset.getString("U_ID"));
				f.setrName(rset.getString("R_NAME"));
				f.setuPhone(rset.getString("U_PHONE"));
				f.setFaDate(rset.getTimestamp("FC_DATE"));
				f.setFcStart(rset.getTimestamp("FC_START"));
				f.setFcEnd(rset.getTimestamp("FC_END"));
				f.setFcStatus(rset.getString("FC_STATUS"));
				
				// System.out.println(f);
				
				fList.add(f);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return fList;
	}

}

