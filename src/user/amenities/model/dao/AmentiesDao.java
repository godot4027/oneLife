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

import static common.JDBCTemplate.*;

public class AmentiesDao {
	
	private Properties query = new Properties();
	
	public AmentiesDao() {
		String fileName = AmentiesDao.class.getResource("/sql/amenties/amenties-query.xml").getPath();
		try {
			query.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 독서실 예약 신청
	public int srResInsert(Connection conn, String dayInput, int seatNumber, int uNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = query.getProperty("srResInsert");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, seatNumber); // 시트번호
			pstmt.setString(2, dayInput); // 시작 날짜
			pstmt.setString(3, dayInput); // 끝 날짜
			pstmt.setInt(4, uNo); // 유저번호
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	// 독서실 예약된 날짜 가져오기
	public List<String> srDateList(Connection conn, int uNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = query.getProperty("srDateList");
		List<String> sList = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, uNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				sList.add(rset.getString("FC_START"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return sList;
	}

	
	
}
