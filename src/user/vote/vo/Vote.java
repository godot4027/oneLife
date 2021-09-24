package user.vote.vo;

import java.util.Date;
import java.util.List;

import user.board.model.vo.Board_Comment;

public class Vote {
	private int v_no;
	private String v_title;
	private String v_content;
	private int v_count;
	private Date v_enroll_date;
	private Date v_modify_date;
	private String v_status;
	private int m_no;
	
/*
   "V_NO"   NUMBER      NOT NULL,
   "V_TITLE"   VARCHAR2(100 BYTE)      NOT NULL,
   "V_CONTENT"   VARCHAR2(4000 BYTE)      NOT NULL,
   "V_COUNT"   NUMBER   DEFAULT 0   NULL,
   "V_ENROLL_DATE"   DATE   DEFAULT SYSDATE   NULL,
   "V_MODIFY_DATE"   DATE   DEFAULT SYSDATE   NULL,
   "V_STATUS"   VARCHAR2(1 BYTE)   DEFAULT 'Y'   NULL,
   "M_NO"   NUMBER      NOT NULL
*/
	public Vote() {}
	
	public Vote(int v_no, String v_title, String v_content, int v_count, Date v_enroll_date, Date v_modify_date,
			String v_status, int m_no) {
		super();
		this.v_no = v_no;
		this.v_title = v_title;
		this.v_content = v_content;
		this.v_count = v_count;
		this.v_enroll_date = v_enroll_date;
		this.v_modify_date = v_modify_date;
		this.v_status = v_status;
		this.m_no = m_no;
	}






	public int getV_no() {
		return v_no;
	}

	public void setV_no(int v_no) {
		this.v_no = v_no;
	}

	public String getV_title() {
		return v_title;
	}

	public void setV_title(String v_title) {
		this.v_title = v_title;
	}

	public String getV_content() {
		return v_content;
	}

	public void setV_content(String v_content) {
		this.v_content = v_content;
	}

	public int getV_count() {
		return v_count;
	}

	public void setV_count(int v_count) {
		this.v_count = v_count;
	}

	public Date getV_enroll_date() {
		return v_enroll_date;
	}

	public void setV_enroll_date(Date v_enroll_date) {
		this.v_enroll_date = v_enroll_date;
	}

	public Date getV_modify_date() {
		return v_modify_date;
	}

	public void setV_modify_date(Date v_modify_date) {
		this.v_modify_date = v_modify_date;
	}

	public String getV_status() {
		return v_status;
	}

	public void setV_status(String v_status) {
		this.v_status = v_status;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	@Override
	public String toString() {
		return "Vote [v_no=" + v_no + ", v_title=" + v_title + ", v_content=" + v_content + ", v_count=" + v_count
				+ ", v_enroll_date=" + v_enroll_date + ", v_modify_date=" + v_modify_date + ", v_status=" + v_status
				+ ", m_no=" + m_no + "]";
	}

	
}

