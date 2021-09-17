package admin.member.model.vo;

public class Info_manager {
	private int m_no;
	private String m_id;
	private String m_password;
	private String m_name;
	private String m_nick;
	private String phone;
	private String m_jobcode;
	
	/*
	 * M_NO	NUMBER
	M_ID	VARCHAR2(20 BYTE)
	M_PASSWORD	VARCHAR2(20 BYTE)
	M_NAME	VARCHAR2(10 BYTE)
	M_NICK	VARCHAR2(12 BYTE)
	M_PHONE	VARCHAR2(13 BYTE)
	M_JOBCODE	VARCHAR2(10 BYTE)*/
	
	public Info_manager() {}

	public Info_manager(int m_no, String m_id, String m_password, String m_name, String m_nick, String phone,
			String m_jobcode) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_password = m_password;
		this.m_name = m_name;
		this.m_nick = m_nick;
		this.phone = phone;
		this.m_jobcode = m_jobcode;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_nick() {
		return m_nick;
	}

	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getM_jobcode() {
		return m_jobcode;
	}

	public void setM_jobcode(String m_jobcode) {
		this.m_jobcode = m_jobcode;
	}

	@Override
	public String toString() {
		return "Info_manager [m_no=" + m_no + ", m_id=" + m_id + ", m_password=" + m_password + ", m_name=" + m_name
				+ ", m_nick=" + m_nick + ", phone=" + phone + ", m_jobcode=" + m_jobcode + "]";
	}
	
	
	
	

}
