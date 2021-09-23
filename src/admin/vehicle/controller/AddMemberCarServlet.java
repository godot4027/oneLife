package admin.vehicle.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import admin.vehicle.model.service.MemberCarService;
import admin.vehicle.model.vo.HouseHoldCar;
import admin.vehicle.model.vo.MemberCar;
import user.member.model.service.MemberService;

/**
 * Servlet implementation class AddMemberCarServlet
 */
@WebServlet("/admin/in/add")
public class AddMemberCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMemberCarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int dong = Integer.parseInt(request.getParameter("dong"));
		int ho = Integer.parseInt(request.getParameter("ho"));
		String carNo = request.getParameter("carNo");
		String rName = request.getParameter("rName");
		String cPhone = request.getParameter("cPhone");
//		int mno = ((Member)request.getSession().getAttribute("loginUser")).getUserNo(); 매니저 로그인 세션
		
		int rno = new MemberCarService().selectRno(dong, ho, rName);
		
		MemberCar m = new MemberCar();
		m.setMcNo(carNo);
		m.setmNo(1); //매니저 로그인 세션
		m.setrNo(rno);
		m.setcPhone(cPhone);
		
//		HouseHoldCar h = new HouseHoldCar();
//		h.setDong(dong);
//		h.setHo(ho);
//		h.getMemberCarList().add(m);
		
		
		HouseHoldCar houseHoldCar = new MemberCarService().insertMemberCar(m, dong, ho);
		
		response.setContentType("application/json; charset=utf-8");		
		new Gson().toJson(houseHoldCar, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
