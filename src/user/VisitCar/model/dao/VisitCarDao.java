package user.VisitCar.model.dao;

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

import user.VisitCar.model.vo.PageInfo;
import user.VisitCar.model.vo.VisitCar;
import user.member.model.dao.MemberDao;

public class VisitCarDao {
private Properties query = new Properties();
	
	public VisitCarDao() {
		String fileName = MemberDao.class.getResource("/sql/VisitCar/visitCar-query.xml").getPath();
		
		try {
			query.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public List<VisitCar> selectList(Connection conn, PageInfo pi, int dong, int ho) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<VisitCar> visitCarList = new ArrayList<>();
		String sql = query.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;

			int paramIndex = 1;
			
			pstmt.setInt(1, dong);
			pstmt.setInt(2, ho);
			pstmt.setInt(3, startRow);
			pstmt.setInt(4, endRow);
			
			rset = pstmt.executeQuery();
			while(rset.next()) {
				visitCarList.add(new VisitCar(rset.getInt("vc_id"), rset.getDate("vc_date"), rset.getString("vc_no"),
						rset.getString("vc_purpose"), rset.getString("vc_phone"), rset.getDate("vc_modifydate"), rset.getString("vc_status"), rset.getString("r_name"), rset.getInt("u_no")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return visitCarList;
	}
	
	public int getListCount(Connection conn, int dong, int ho) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = query.getProperty("getListCount");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dong);
			pstmt.setInt(2, ho);

			rset = pstmt.executeQuery();
			if (rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return listCount;
	}

	public int insertVisitCar(Connection conn, String dateString, String carNo, String purpose, String phone, int userNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = query.getProperty("insertVisitCar");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dateString);
			pstmt.setString(2, carNo);
			pstmt.setString(3, purpose);
			pstmt.setString(4, phone);
			pstmt.setInt(5, userNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int selectVid(Connection conn) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = query.getProperty("selectVid");
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
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

	public VisitCar selectDetail(Connection conn, int vid) {
		VisitCar vs = null;
		PreparedStatement pstmt = null;
		String sql = query.getProperty("selectDetail");
		ResultSet rset = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, vid);;
			rset = pstmt.executeQuery();
			

			if (rset.next()) {
				vs = new VisitCar(rset.getInt("vc_id"), rset.getDate("vc_date"), rset.getString("vc_no"), rset.getString("vc_purpose"), rset.getString("vc_phone"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return vs;
	}

	public int updateVisitCar(Connection conn, String dateString, String carNo, String purpose, String phone, int vid) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = query.getProperty("updateVisitCar");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dateString);
			pstmt.setString(2, carNo);
			pstmt.setString(3, purpose);
			pstmt.setString(4, phone);
			pstmt.setInt(5, vid);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result; 
	}

	public int deleteVisitCar(Connection conn, int vid) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = query.getProperty("deleteVisitCar");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vid);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result; 
	}

	
}
