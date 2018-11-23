package com.baizhi.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhi.entity.Auction;

public interface AuctionDao {
public List<Auction> selectAll();
public void update(Auction auction);
public void delete(@Param("id") int id);
public Auction selectOne(@Param("id") int id);
public void add(Auction auction);
public void updatepic(@Param("auction_id") int auction_id, @Param("auction_upset") double auction_upset);

public List<Auction> selectSs(@Param("auction_name") String auction_name, @Param("auction_desc") String auction_desc, @Param("auction_start_time") Date auction_start_time, @Param("auction_end_time") Date auction_end_time, @Param("auction_start_price") Double auction_start_price);
}
