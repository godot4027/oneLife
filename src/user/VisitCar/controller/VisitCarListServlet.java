package user.VisitCar.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.VisitCar.model.service.VisitCarService;
import user.member.model.vo.Member;

/**
 * Servlet implementation class VisitCarListServlet
 */
@WebServlet("/visitCarList")
public class VisitCarListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VisitCarListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Member m = (Member) request.getSession().getAttribute("loginUser");
		int dong = m.getR_DONG();
		int ho = m.getR_HO();
		int page = 1;
		if (request.getParameter("page")  != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		
		Map<String, Object> map = new VisitCarService().selectList(page, dong, ho);
		
		//응답 페이지 구성 시 사용할 데이터 설정
		request.setAttribute("pi", map.get("pi"));
		request.setAttribute("visitCarList", map.get("visitCarList"));
		
		request.getRequestDispatcher("WEB-INF/views/user/jsp/VisitCar/VisitCarList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
