package cn.coding52.CodingMart.model;

public class Types {
	private int tid;
	private String tname;
	private String turl;
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTurl() {
		return turl;
	}
	public void setTurl(String turl) {
		this.turl = turl;
	}
	public Types(int tid, String tname, String turl) {
		super();
		this.tid = tid;
		this.tname = tname;
		this.turl = turl;
	}
	
	public Types(String tname, String turl) {
		super();
		this.tname = tname;
		this.turl = turl;
	}
	public Types() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Types [tname=" + tname + ", turl=" + turl + "]";
	}
	public Types(int tid, String tname) {
		super();
		this.tid = tid;
		this.tname = tname;
	}
	
	
}
