package user.member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import admin.member.model.dao.Info_managerDao;
import admin.member.model.vo.Info_manager;
import user.member.model.dao.MemberDao;
import user.member.model.vo.Member;

public class MemberService {
	private MemberDao md = new MemberDao();


	public Member loginMember(String userId, String userPwd) {
		Connection conn = getConnection();
		
		Member loginUser = new MemberDao().loginMember(conn, userId, userPwd);

		close(conn);
		
		return loginUser;
	}
}
