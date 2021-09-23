package user.board.model.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import user.board.model.dao.boardDao;
import user.board.model.vo.Board;
import user.board.model.vo.Board_Comment;
import user.board.model.vo.PageInfo;
import user.board.model.vo.Search;

import static common.JDBCTemplate.*;


public class boardService {
	private boardDao bd = new boardDao();
	
	// 1. 자유게시판 리스트 조회용 서비스 메소드
	public Map<String, Object> selectlist(int page, Search s) {
		Connection conn = getConnection();
		
		int listCount = bd.getListCount(conn, s);
		System.out.println("listCount : " + listCount);
		
		PageInfo pi = new PageInfo(page, listCount, 10, 10);
		System.out.println("pi : " + pi);
		
		List<Board> boardList = bd.selectList(conn, pi, s);
		System.out.println("boardList : " + boardList);
		
		Map<String, Object> returnMap = new HashMap<>();
		
		returnMap.put("pi", pi);
		returnMap.put("boardList", boardList);
		
		return returnMap;
	}

	// 2. 자유게시판 글 작성 
	public int insertBoard(Board b) {
		Connection conn = getConnection();
		
		int result = bd.insertBoard(conn, b);
		
		int b_no = 0;
		if (result > 0) {
			b_no = bd.selectBoardNo(conn);
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return b_no;
	}

	// 조회수 증가
	public int increaseCount(int b_no) {
		Connection conn = getConnection();
		
		int result =  bd.increaseCount(conn, b_no);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	// 게시글 1개 조회
	public Board selectBoard(int b_no) {
		Connection conn = getConnection();
		
		Board c = bd.selectBoard(conn, b_no);
		
		// 댓글 조회
		c.setReplyList(bd.selectReplyList(conn, b_no));
		
		
		close(conn);
		
		return c;
	}

	// 게시글 수정
	public int updateBoard(Board b) {
		Connection conn = getConnection();
		
		int result =  bd.updateBoard(conn, b);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	// 게시글 삭제
	public int deleteBoard(int b_no) {
		Connection conn = getConnection();
		
		int result =  bd.deleteBoard(conn, b_no);
		
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

	// 댓글 추가 + 새로 갱신 된 댓글 리스트 조회
	public List<Board_Comment> insertReply(Board_Comment b) {
		Connection conn = getConnection();
		
		int result = bd.insertReply(conn, b);
		
		List<Board_Comment> replyList = null;
		
		if (result > 0) {
			commit(conn);
			replyList = bd.selectReplyList(conn, b.getB_no());
		} else {
			rollback(conn);
		}
		close(conn);
		
		return replyList;
	}
	



//
//	// 7. 댓글 삭제 
//	public List<complaint_manager> deleteReply(complaint_manager r) {
//		Connection conn = getConnection();
//		
//		int result = cd.deleteReply(conn, r);
//		
//		List<complaint_manager> replyList = null;
//		
//		if (result > 0) {
//			commit(conn);
//			replyList = cd.selectReplyList(conn, r.getC_no());
//		} else {
//			rollback(conn);
//		}
//		close(conn);
//		
//		return replyList;
//	}
//
//    // 8. 댓글 전체 조회
//	public List<complaint_manager> selectList() {
//		Connection conn = getConnection();
//		List<complaint_manager> complaintmanList = cd.selectList(conn); 
//		close(conn);
//		return complaintmanList;
//	}
//
//	

	

	
}
	
	
	
	
	





