package cn.coding52.CodingMart.model;

public class Goods {
	private int gid;
	private int gnum;
	private int tid;
	private String gname;
	private String gcontent;
	private String grate;
	private String gurl;
	private double gprice;
	private String tname;//@author:swq   重要请勿删除，与其它代码无冲突
	private String newName;//@author:swq   重要请勿删除，与其它代码无冲突
	
	
	public String getNewName() {
		return newName;
	}
	public void setNewName(String newName) {
		this.newName = newName;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getGnum() {
		return gnum;
	}
	public void setGnum(int gnum) {
		this.gnum = gnum;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getGcontent() {
		return gcontent;
	}
	public void setGcontent(String gcontent) {
		this.gcontent = gcontent;
	}
	public String getGrate() {
		return grate;
	}
	public void setGrate(String grate) {
		this.grate = grate;
	}
	public String getGurl() {
		return gurl;
	}
	public void setGurl(String gurl) {
		this.gurl = gurl;
	}
	public double getGprice() {
		return gprice;
	}
	public void setGprice(double gprice) {
		this.gprice = gprice;
	}
	public Goods(int gid, int tid, String gname, String gcontent,
			String grate, String gurl, double gprice) {
		super();
		this.gid = gid;
		this.tid = tid;
		this.gname = gname;
		this.gcontent = gcontent;
		this.grate = grate;
		this.gurl = gurl;
		this.gprice = gprice;
	}
	public Goods(String gname, String gurl,int tid) {
		super();
		this.tid=tid;
		this.gname = gname;
		this.gurl = gurl;
	}
	/*swq*/
	public Goods() {
		super();
	}
	@Override
	//@author:swq   以下重要请勿删除，如需tostring方法请重写，不要改动这里
	public String toString() {
		return "Goods [gnum=" + gnum + ", gname=" + gname + ", gcontent="
				+ gcontent + ", gurl=" + gurl + ", gprice=" + gprice
				+ ", tname=" + tname + "]";
	}
	
	public Goods(int gid, int gnum, int tid, String gname, String gcontent,
			double gprice) {
		super();
		this.gid = gid;
		this.gnum = gnum;
		this.tid = tid;
		this.gname = gname;
		this.gcontent = gcontent;
		this.gprice = gprice;
	}
	public Goods(int gid) {
		super();
		this.gid = gid;
	}
	public Goods(String gname) {
		super();
		this.gname = gname;
	}
	
	
	
}
