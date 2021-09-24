package user.vote.model;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import user.board.model.vo.Board;
import user.board.model.vo.PageInfo;
import user.board.model.vo.Search;
import user.vote.vo.Vote;

public class voteService {
	private voteDao vd = new voteDao();
	
	// 1. 투표게시판 리스트 조회용 서비스 메소드
	public Map<String, Object> selectlist(int page, Search s) {
		Connection conn = getConnection();
		
		int listCount = vd.getListCount(conn, s);
		System.out.println("listCount : " + listCount);
		
		PageInfo pi = new PageInfo(page, listCount, 10, 10);
		System.out.println("pi : " + pi);
		
		List<Vote> voteList = vd.selectList(conn, pi, s);
		System.out.println("voteList : " + voteList);
		
		Map<String, Object> returnMap = new HashMap<>();
		
		returnMap.put("pi", pi);
		returnMap.put("voteList", voteList);
		
		return returnMap;
	}
	
	// 투표게시판 글 작성 
		public int insertVote(Vote v) {
			Connection conn = getConnection();
			
			int result = vd.insertVote(conn, v);
			
			int b_no = 0;
			if (result > 0) {
				b_no =vd.selectBoardNo(conn);
				commit(conn);
			} else {
				rollback(conn);
			}
			close(conn);
			
			return b_no;
		}
	
}
