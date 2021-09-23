package admin.manager.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.manager.model.service.ManagerService;
import admin.manager.model.vo.Manager;

@WebServlet("/admin/infoChange")
public class ManagerInfoChangeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mNo = Integer.parseInt(request.getParameter("m_No"));
		String mId = request.getParameter("m_Id");
		String mPwdOld = request.getParameter("m_Password");
		String mPwdNew = request.getParameter("m_Password2");
		String mPhone = request.getParameter("m_Phone");
		
		Manager m = new Manager();
		m.setmNo(mNo);
		m.setmId(mId);
		m.setmPassword(mPwdOld);
		m.setmPhone(mPhone);
		
		Manager manager = new ManagerService().infoChangeManager(m, mPwdNew);
		
		if(manager != null) {
			request.getSession().setAttribute("loginManager", manager);
			response.sendRedirect(request.getContextPath() + "/admin/");
		}else {
			response.sendRedirect(request.getContextPath() + "/admin/");
		}
		
		
		
		
		
		
		
		
	}

}
