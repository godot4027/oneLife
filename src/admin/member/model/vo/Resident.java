package admin.member.model.vo;

import java.util.Date;

public class Resident {
	/*
	R_NO	NUMBER
	R_DONG	NUMBER
	R_HO	NUMBER
	R_NAME	VARCHAR2(10 BYTE)
	R_EMAIL	VARCHAR2(30 BYTE)
	R_TYPE	VARCHAR2(9 BYTE)
	R_STATUS	CHAR(1 BYTE)
	R_DATE	DATE
	*/
	private int rNo;
	private int rDong;
	private int rHo;
	private String rName;
	private String rEmail;
	private String rType;
	private String rStatus;
	private Date rDate;
	
	public Resident() {
		super();
	}
	

	public Resident(int rDong, int rHo, String rName, String rEmail) {
		super();
		this.rDong = rDong;
		this.rHo = rHo;
		this.rName = rName;
		this.rEmail = rEmail;
	}

	public Resident(int rDong, int rHo, String rName, String rEmail, String rType) {
		super();
		this.rDong = rDong;
		this.rHo = rHo;
		this.rName = rName;
		this.rEmail = rEmail;
		this.rType = rType;
	}


	public Resident(int rDong, int rHo) {
		super();
		this.rDong = rDong;
		this.rHo = rHo;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getrDong() {
		return rDong;
	}

	public void setrDong(int rDong) {
		this.rDong = rDong;
	}

	public int getrHo() {
		return rHo;
	}

	public void setrHo(int rHo) {
		this.rHo = rHo;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getrEmail() {
		return rEmail;
	}

	public void setrEmail(String rEmail) {
		this.rEmail = rEmail;
	}

	public String getrType() {
		return rType;
	}

	public void setrType(String rType) {
		this.rType = rType;
	}

	public String getrStatus() {
		return rStatus;
	}

	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}

	public Date getrDate() {
		return rDate;
	}

	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}

	@Override
	public String toString() {
		return "Resident [rNo=" + rNo + ", rDong=" + rDong + ", rHo=" + rHo + ", rName=" + rName + ", rEmail=" + rEmail
				+ ", rType=" + rType + ", rStatus=" + rStatus + ", rDate=" + rDate + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((rDate == null) ? 0 : rDate.hashCode());
		result = prime * result + rDong;
		result = prime * result + ((rEmail == null) ? 0 : rEmail.hashCode());
		result = prime * result + rHo;
		result = prime * result + ((rName == null) ? 0 : rName.hashCode());
		result = prime * result + rNo;
		result = prime * result + ((rStatus == null) ? 0 : rStatus.hashCode());
		result = prime * result + ((rType == null) ? 0 : rType.hashCode());
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Resident other = (Resident) obj;
		if (rDate == null) {
			if (other.rDate != null)
				return false;
		} else if (!rDate.equals(other.rDate))
			return false;
		if (rDong != other.rDong)
			return false;
		if (rEmail == null) {
			if (other.rEmail != null)
				return false;
		} else if (!rEmail.equals(other.rEmail))
			return false;
		if (rHo != other.rHo)
			return false;
		if (rName == null) {
			if (other.rName != null)
				return false;
		} else if (!rName.equals(other.rName))
			return false;
		if (rNo != other.rNo)
			return false;
		if (rStatus == null) {
			if (other.rStatus != null)
				return false;
		} else if (!rStatus.equals(other.rStatus))
			return false;
		if (rType == null) {
			if (other.rType != null)
				return false;
		} else if (!rType.equals(other.rType))
			return false;
		return true;
	}
	
	
}
