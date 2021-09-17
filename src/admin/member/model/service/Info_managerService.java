package admin.member.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;

import admin.member.model.dao.Info_managerDao;
import admin.member.model.vo.Info_manager;
import user.member.model.dao.MemberDao;
import user.member.model.vo.Member;

public class Info_managerService {
	private Info_manager im = new Info_manager();
	
	public Info_manager loginUser_man(String userId, String userPwd) {
		Connection conn = getConnection();
		
		Info_manager loginUser_man = new Info_managerDao().loginUser_man(conn, userId, userPwd);

		close(conn);
		
		return loginUser_man;
	}
}
