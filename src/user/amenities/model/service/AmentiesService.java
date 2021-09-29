package user.amenities.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import user.amenities.model.dao.AmentiesDao;

public class AmentiesService {
	
	// 독서실 예약신청
	public int srResInsert(String dayInput, int seatNumber, int uNo) {
		Connection conn = getConnection();
		
		int result = new AmentiesDao().srResInsert(conn, dayInput, seatNumber, uNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	// 독서실 예약된 날짜 가져오기
	public List<String> srDateList(int uNo) {
		Connection conn = getConnection();
		
		List<String> srDateList = new AmentiesDao().srDateList(conn, uNo);
		
		close(conn);
		
		return srDateList;
	}

}
