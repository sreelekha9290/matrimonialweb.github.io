package pojo;

public class Pay {
	private String paymode;
	private int uid;
	private String email;
	private String mobile;
	private String status;

	public Pay() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pay(String paymode, int uid, String email, String mobile,
			String status) {
		super();
		this.paymode = paymode;
		this.uid = uid;
		this.email = email;
		this.mobile = mobile;
		this.status = status;
	}

	public String getPaymode() {
		return paymode;
	}

	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Pay [paymode=" + paymode + ",uid=" + uid + ", email=" + email
				+ ", mobile=" + mobile + ", status=" + status + "]";
	}

}
