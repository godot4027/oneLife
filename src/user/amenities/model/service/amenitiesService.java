package user.amenities.model.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import user.amenities.model.dao.amenitiesDao;
import user.amenities.model.vo.Facility;
import user.amenities.model.vo.PageInfo;
import user.amenities.model.vo.Search;

import static common.JDBCTemplate.*;


public class amenitiesService {
	private amenitiesDao ad = new amenitiesDao();
	
	public Map<String, Object> selectlist(int page, Search s) {
		Connection conn = getConnection();
		
		// 1. 게시글 총 개수 구하기
		int listCount = ad.getListCount(conn, s);
		
		// 2. PageInfo 객체 만들기
		PageInfo pi = new PageInfo(page, listCount, 10, 10);
		
		// 3. 페이징 처리가 된 게시글 목록 조회
		List<Facility> studyRoomList = ad.selectList(conn, pi, s);
		
		// 리턴용 Map 선언
		Map<String, Object> returnMap = new HashMap<>();
		
		returnMap.put("pi", pi);
		returnMap.put("studyRoomList", studyRoomList);
		
		return returnMap;
	}
	


	

	
}
	
	
	
	
	





