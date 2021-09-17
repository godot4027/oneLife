package user.member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import admin.member.model.dao.Info_managerDao;
import admin.member.model.vo.Info_manager;
import user.member.model.dao.MemberDao;
import user.member.model.vo.Member;

public class MemberService {

	private MemberDao md = new MemberDao();

	// 1. 로그인 기능
	public Member loginMember(String id, String pwd) {

		Connection conn = getConnection();
		
		Member loginUser = new MemberDao().loginMember(conn, userId, userPwd);

		close(conn);
		
		return loginUser;
	}

	// 2. 회원가입 기능
	public int insertMember(Member mem) {
	Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, mem);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	// 주민 =? 회원
	public int checkR(String name, String email) {
		Connection conn = getConnection();

		int result = new MemberDao().checkR(conn, name, email);

		close(conn);
		return result;
	}

	// 아이디 중복 확인
	public int idCheck(String userId) {
	Connection conn = getConnection();
		
		int result = new MemberDao().idCheck(conn, userId);
		
		close(conn);
		
		return result;
	}

	// 중복 닉네임 체크
	public int nickCheck(String nickName) {
		Connection conn = getConnection();

		int result = new MemberDao().nickCheck(conn, nickName);

		close(conn);

		return result;
	}

	// 회원 상태 바꾸기
	public int changeStatus(int rno) {
		Connection conn = getConnection();

		int result = new MemberDao().changeStatus(conn, rno);

		close(conn);

		return result;
	}
	
}
