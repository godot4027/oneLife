package user.amenities.model.vo;

public class Search {
	private String mydate;
	private String u_no;
	
	public Search() {}

	public Search(String mydate, String u_no) {
		super();
		this.mydate = mydate;
		this.u_no = u_no;
	}

	public String getMydate() {
		return mydate;
	}

	public void setMydate(String mydate) {
		this.mydate = mydate;
	}

	public String getU_no() {
		return u_no;
	}

	public void setU_no(String u_no) {
		this.u_no = u_no;
	}

	@Override
	public String toString() {
		return "Search [mydate=" + mydate + ", u_no=" + u_no + "]";
	}

	
	
		

	

}
