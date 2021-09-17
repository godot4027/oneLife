package admin.manager.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import admin.manager.model.dao.ManagerDao;
import admin.manager.model.vo.Manager;
import admin.manager.model.vo.PageInfo;
import admin.manager.model.vo.Search;

public class ManagerService {
	private ManagerDao DAO = null;
	
	public ManagerService() {
		DAO = new ManagerDao();
	}

	// 매니저 목록 조회
	public Map<String, Object> managerList(int page, Search sc) {
		Connection conn = getConnection();
		
		// 게시글 총갯수 구하기
		int listCount = new ManagerDao().getListCount(conn, sc);
		// System.out.println("listCount : " + listCount);
		
		// 페이징 객체 만들기
		PageInfo pi = new PageInfo(page, listCount, 10, 10);
		
		// 리스트 목록 만들기
		List<Manager> mList = DAO.managerList(conn, pi, sc);
		
		// 페이징 객체, 리스트목록 저장
		Map<String, Object> returnMap = new HashMap<>();
		
		returnMap.put("pi", pi);
		returnMap.put("mList", mList);
		
		return returnMap;
	}

	// 아이디 중복확인
	public int idCheck(String mId) {
		Connection conn = getConnection();
		
		int result = DAO.idCheck(conn, mId);
		
		return result;
	}
	
	// 관리자 계정생성
	public int createManager(Manager manager) {
		Connection conn = getConnection();
		
		int result = DAO.createManager(conn, manager);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}

}
