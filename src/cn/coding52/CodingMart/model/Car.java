
package cn.coding52.CodingMart.model;

public class Car {
	private int cid;
	private int uid;
	private int gid;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	private String curl;
	private String cname;
	private String content;
	private double cprice;
	public String getCurl() {
		return curl;
	}
	public void setCurl(String curl) {
		this.curl = curl;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public double getCprice() {
		return cprice;
	}
	public void setCprice(double cprice) {
		this.cprice = cprice;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public Car(int gid, String curl, String cname, double cprice,String content) {

		this.gid = gid;
		this.curl = curl;
		this.cname = cname;
		this.cprice = cprice;
		this.content = content;
	}
	

}
