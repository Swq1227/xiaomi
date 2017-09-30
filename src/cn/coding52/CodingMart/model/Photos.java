package cn.coding52.CodingMart.model;

public class Photos {
	private int pid;
	private String purl;
	private int tid;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPurl() {
		return purl;
	}
	public void setPurl(String purl) {
		this.purl = purl;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public Photos(int pid, String purl,int tid) {
		super();
		this.pid = pid;
		this.purl = purl;
		this.tid=tid;
	}
	

}
