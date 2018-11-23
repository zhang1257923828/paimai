package com.baizhi.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.AuctionDao;
import com.baizhi.entity.Auction;
import com.baizhi.service.AuctionService;
@Service
public class AuctionServiceImpl implements AuctionService {
	@Autowired
	private AuctionDao auctionDao;
	@Override
	public List<Auction> selectAll() {
		// TODO 自动生成的方法存根
		return auctionDao.selectAll();
	}

	@Override
	public void update(Auction auction) {
		// TODO 自动生成的方法存根
		auctionDao.update(auction);
	}

	@Override
	public void delete(int id) {
		// TODO 自动生成的方法存根
		auctionDao.delete(id);
	}

	@Override
	public Auction selectOne(int id) {
		// TODO 自动生成的方法存根
		return auctionDao.selectOne(id);
	}

	@Override
	public void add(Auction auction) {
		// TODO 自动生成的方法存根
		auctionDao.add(auction);
	}

	@Override
	public void updatepic(int auction_id, double auction_upset) {
		// TODO 自动生成的方法存根
		auctionDao.updatepic(auction_id, auction_upset);
	}

	@Override
	public List<Auction> selectSs(String auction_name, String auction_desc, Date auction_start_time,
			Date auction_end_time, Double auction_start_price) {
		// TODO 自动生成的方法存根
		return auctionDao.selectSs(auction_name, auction_desc, auction_start_time, auction_end_time, auction_start_price);
	}

}
