package cn.coding52.CodingMart.model;

public class User {
	private int uid;
	private String uname;
	private String  email;
	private String upsw;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUpsw() {
		return upsw;
	}
	public void setUpsw(String upsw) {
		this.upsw = upsw;
	}
	public User(String uname, String email, String upsw) {
		super();
		this.uname = uname;
		this.email = email;
		this.upsw = upsw;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(int uid, String uname, String email) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.email = email;
	}
	

}
