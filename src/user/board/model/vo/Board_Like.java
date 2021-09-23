package user.board.model.vo;

import java.util.Date;

public class Board_Like {
	
	private int u_no;
	private int b_no;
	private Date bl__date;
	private String bl_status;
	
	/*U_NO	NUMBER
		B_NO	NUMBER
		BL_DATE	DATE
		BL_STATUS	VARCHAR2(1 BYTE)
	 */
	
	public Board_Like() {}

	public Board_Like(int u_no, int b_no, Date bl__date, String bl_status) {
		super();
		this.u_no = u_no;
		this.b_no = b_no;
		this.bl__date = bl__date;
		this.bl_status = bl_status;
	}

	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public Date getBl__date() {
		return bl__date;
	}

	public void setBl__date(Date bl__date) {
		this.bl__date = bl__date;
	}

	public String getBl_status() {
		return bl_status;
	}

	public void setBl_status(String bl_status) {
		this.bl_status = bl_status;
	}

	@Override
	public String toString() {
		return "Board_Like [u_no=" + u_no + ", b_no=" + b_no + ", bl__date=" + bl__date + ", bl_status=" + bl_status
				+ "]";
	}
	
	

}