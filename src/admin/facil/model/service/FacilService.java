package admin.facil.model.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import admin.facil.model.dao.FacilDao;
import admin.facil.model.vo.Facil;
import admin.facil.model.vo.Search;
import common.PageInfo;

import static common.JDBCTemplate.*;

public class FacilService {
	private FacilDao fd = null;
	
	public FacilService() {
		fd = new FacilDao();
	}

	// 부대시설 목록 조회
	public Map<String, Object> selectListFacil(int page, Search sc) {
		Connection conn = getConnection();
		
		// 게시글 전체 목록 조회
		int listCount = fd.getListCount(conn, sc);
		// System.out.println("listCount : " + listCount);
		
		// 페이징 객체 만들기
		PageInfo pi = new PageInfo(page, listCount, 10, 10);
		// System.out.println(pi);
		
		// 목록 가져오기
		List<Facil> fList = fd.selectListFacil(conn, pi, sc);
		// System.out.println(fList);
		
		close(conn);
		
		Map<String, Object> returnMap = new HashMap<>();
		returnMap.put("pi", pi);
		returnMap.put("fList", fList);
		
		return returnMap;
	}

}
