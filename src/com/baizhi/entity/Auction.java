package com.baizhi.entity;

import java.sql.Date;
import java.util.List;

public class Auction {
private int auction_id;
private String auction_name;
private Double auction_start_price; 
private Double auction_upset; 
private Date auction_start_time;
private Date auction_end_time;
private String auction_pic;
private String auction_desc;
private List<User> userList;
public Auction() {
	super();
	// TODO 自动生成的构造函数存根
}
public Auction(int auction_id, String auction_name, Double auction_start_price, Double auction_upset,
		Date auction_start_time, Date auction_end_time, String auction_pic, String auction_desc, List<User> userList) {
	super();
	this.auction_id = auction_id;
	this.auction_name = auction_name;
	this.auction_start_price = auction_start_price;
	this.auction_upset = auction_upset;
	this.auction_start_time = auction_start_time;
	this.auction_end_time = auction_end_time;
	this.auction_pic = auction_pic;
	this.auction_desc = auction_desc;
	this.userList = userList;
}
public int getAuction_id() {
	return auction_id;
}
public void setAuction_id(int auction_id) {
	this.auction_id = auction_id;
}
public String getAuction_name() {
	return auction_name;
}
public void setAuction_name(String auction_name) {
	this.auction_name = auction_name;
}
public Double getAuction_start_price() {
	return auction_start_price;
}
public void setAuction_start_price(Double auction_start_price) {
	this.auction_start_price = auction_start_price;
}
public Double getAuction_upset() {
	return auction_upset;
}
public void setAuction_upset(Double auction_upset) {
	this.auction_upset = auction_upset;
}
public Date getAuction_start_time() {
	return auction_start_time;
}
public void setAuction_start_time(Date auction_start_time) {
	this.auction_start_time = auction_start_time;
}
public Date getAuction_end_time() {
	return auction_end_time;
}
public void setAuction_end_time(Date auction_end_time) {
	this.auction_end_time = auction_end_time;
}
public String getAuction_pic() {
	return auction_pic;
}
public void setAuction_pic(String auction_pic) {
	this.auction_pic = auction_pic;
}
public String getAuction_desc() {
	return auction_desc;
}
public void setAuction_desc(String auction_desc) {
	this.auction_desc = auction_desc;
}
public List<User> getUserList() {
	return userList;
}
public void setUserList(List<User> userList) {
	this.userList = userList;
}
@Override
public String toString() {
	return "Auction [auction_id=" + auction_id + ", auction_name=" + auction_name + ", auction_start_price="
			+ auction_start_price + ", auction_upset=" + auction_upset + ", auction_start_time=" + auction_start_time
			+ ", auction_end_time=" + auction_end_time + ", auction_pic=" + auction_pic + ", auction_desc="
			+ auction_desc + ", userList=" + userList + "]";
}

}