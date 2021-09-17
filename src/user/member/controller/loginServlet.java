package user.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.member.model.service.Info_managerService;
import admin.member.model.vo.Info_manager;
import user.member.model.service.MemberService;
import user.member.model.vo.Member;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public loginServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		Member loginUser = new MemberService().loginMember(userId, userPwd);
		Info_manager loginUser_man = new Info_managerService().loginUser_man(userId, userPwd);
		
       
		if(loginUser != null) {
	         HttpSession session = request.getSession();
	         
	         session.setAttribute("loginUser", loginUser);
	         response.sendRedirect(request.getContextPath()+"/main");
	      
	      } else if(loginUser_man != null) {
	    	  HttpSession session = request.getSession();
		         
		      session.setAttribute("loginUser_man", loginUser_man);
		      response.sendRedirect(request.getContextPath()+"/main");
	    	  
	      } else {
	         request.setAttribute("msg", "로그인에 실패하였습니다.");
	         RequestDispatcher view = request.getRequestDispatcher("WEB-INF/views/user/common/errorpage.jsp");
	         view.forward(request, response);
	      }

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
