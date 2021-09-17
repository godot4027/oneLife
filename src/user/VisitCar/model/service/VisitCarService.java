package user.VisitCar.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import user.VisitCar.model.dao.VisitCarDao;
import user.VisitCar.model.vo.PageInfo;
import user.VisitCar.model.vo.VisitCar;

public class VisitCarService {
	private VisitCarDao md = new VisitCarDao();

	public Map<String, Object> selectList(int page, int dong, int ho) {
		Connection conn = getConnection();

		int listCount = md.getListCount(conn, dong, ho);

		PageInfo pi = new PageInfo(page, listCount, 10, 10);

		List<VisitCar> visitCarList = md.selectList(conn, pi, dong, ho);
		Map<String, Object> returnMap = new HashMap<>();
		returnMap.put("pi", pi);
		returnMap.put("visitCarList", visitCarList);

		close(conn);

		return returnMap;
	}

	public int insertVisitCar(String dateString, String carNo, String purpose, String phone, int userNo) {
		Connection conn = getConnection();
		int result = md.insertVisitCar(conn, dateString, carNo, purpose, phone, userNo);
		
		int vid = 0;
		if (result > 0) {
			vid = md.selectVid(conn);
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);

		return vid;
	}

	public VisitCar selectDetail(int vid) {
		Connection conn = getConnection();
		VisitCar vs = md.selectDetail(conn, vid);
		
		
		if (vs != null) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);

		return vs;
	}

	public int updateVisitCar(String dateString, String carNo, String purpose, String phone, int vid) {
		Connection conn = getConnection();
		int result = md.updateVisitCar(conn, dateString, carNo, purpose, phone, vid);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);

		return result;
	}

	public int deleteVisitCar(int vid) {
		Connection conn = getConnection();
		int result = md.deleteVisitCar(conn, vid);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);

		return result;
	}

}
