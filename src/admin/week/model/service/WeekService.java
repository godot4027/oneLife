package admin.week.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import admin.week.model.dao.WeekDao;
import admin.week.model.vo.Search;
import admin.week.model.vo.Week;
import common.PageInfo;

public class WeekService {
	
	// 목록 전체 조회
	public Map<String, Object> weekSelectList(int page, Search sc) {
		Connection conn = getConnection();
		
		// 목록 전체 갯수 구하기
		int listCount = new WeekDao().listCount(conn, sc);
		// System.out.println("listCount : " + listCount);
		
		// 페이징 만들기
		PageInfo pi = new PageInfo(page, listCount, 10, 10);
		// System.out.println(pi);
		
		// 목록 조회
		List<Week> wList = new WeekDao().weekSelectList(conn, pi, sc);
		
		Map<String, Object> returnMap = new HashMap<>();
		returnMap.put("pi", pi);
		returnMap.put("wList", wList);
		
		return returnMap;
	}
	
	// 일정 수정
	public Week selectOneList(int scNo) {
		Connection conn = getConnection();
		
		Week week = new WeekDao().selectOneList(conn, scNo);
		
		close(conn);
		
		return week;
	}

	// 게시글 추가
	public int insertWeek(Week week) {
		Connection conn = getConnection();
		
		int maxCount = new WeekDao().maxCount(conn);
		
		int result = new WeekDao().insertWeek(conn, maxCount, week);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	// 게시글 수정
	public int updateWeek(Week week) {
		Connection conn = getConnection();
		
		int result = new WeekDao().updateWeek(conn, week);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	// 게시글 삭제(비공개로 변경)
	public int removeWeek(String[] weeks) {
		Connection conn = getConnection();
		
		int result = new WeekDao().removeWeek(conn, weeks);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}

}
