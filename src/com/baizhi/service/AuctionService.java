package com.baizhi.service;

import java.util.Date;
import java.util.List;

import com.baizhi.entity.Auction;

public interface AuctionService {
	public List<Auction> selectAll();
	public void update(Auction auction);
	public void delete(int id);
	public Auction selectOne(int id);
	public void add(Auction auction);
	public void updatepic(int auction_id, double auction_upset);
	public List<Auction> selectSs(String auction_name, String auction_desc, Date auction_start_time, Date auction_end_time, Double auction_start_price);
}
