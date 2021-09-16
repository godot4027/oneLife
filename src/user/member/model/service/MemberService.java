package user.member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import user.member.model.dao.MemberDao;
import user.member.model.vo.Member;

public class MemberService {
	private MemberDao md = new MemberDao();
	
	// 1. 로그인 기능
	public Member loginMember(String id, String pwd) {
		Connection conn = getConnection();
		
		Member loginUser = new MemberDao().loginMember(conn, id, pwd);

		close(conn);
		
		return loginUser;
	}
}
