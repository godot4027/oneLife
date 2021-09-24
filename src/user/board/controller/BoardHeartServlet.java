package user.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import user.board.model.service.boardService;
import user.board.model.vo.Board;
import user.board.model.vo.Board_Like;
import user.member.model.vo.Member;

/**
 * Servlet implementation class BoardHeartServlet
 */
@WebServlet("/board/heart")
public class BoardHeartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardHeartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		int u_no = ((Member)request.getSession().getAttribute("loginUser")).getU_NO();
		
		Board_Like bl = new Board_Like();
		bl.setB_no(b_no);
		bl.setU_no(u_no);
		
		
		Board b = new boardService().insertHeart(bl);
		
		// GSON 라이브러리 추가 후 replyList 응답
		// GSON 사용 시 날짜 값 Date 포맷에 대한 컨트롤 가능(GsonBuilder 객체가 가진 기능)
		response.setContentType("application/json; charset=utf-8");
		Gson gson = new GsonBuilder().setDateFormat("yyyy.MM.dd HH:mm").create();
		gson.toJson(b, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
