package com.baizhi.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.baizhi.entity.Auction;
import com.baizhi.entity.Record;
import com.baizhi.entity.User;
import com.baizhi.service.AuctionService;
import com.baizhi.service.RecordService;

@Controller
public class AuctionController {
	
	@Autowired
	private AuctionService auctionService;
	@Autowired
	private RecordService recordService;
	//查询全部
	@RequestMapping("/selectAll")
	public String selectAll(Map map){
		List<Auction> list=auctionService.selectAll();
		map.put("list", list);
		return "manage";		
	}
	//增加
	@RequestMapping("/add")
	public String add(Auction auction,MultipartFile pic,HttpServletRequest request) throws IllegalStateException, IOException{
	String fileName=pic.getOriginalFilename();	
	fileName = new Date().getTime()+"_"+fileName;
	String realPath = request.getRealPath("/images");
	System.out.println(realPath);
	pic.transferTo(new File(realPath+"\\"+fileName));
	auction.setAuction_pic(fileName);
		auctionService.add(auction);
		return "redirect:/selectAll.do";
		
	}
//删除
	@RequestMapping("/delete")
	public String delete(int auction_id){
		auctionService.delete(auction_id);
		return "redirect:/selectAll.do";
		
	}
	//查询单个
	@RequestMapping("/selectOne")
	public String selectOne(Map map, int id){
		Auction auction=auctionService.selectOne(id);
		map.put("auction", auction);
		return "update";
		
	}
	//修改
	@RequestMapping("/update")
	public String update(Auction auction,MultipartFile pic,HttpServletRequest request) throws IllegalStateException, IOException{
		String fileName=pic.getOriginalFilename();
		if(fileName!=""){
			fileName = new Date().getTime()+"_"+fileName;
			String realPath = request.getRealPath("/images");
			File file = new File(realPath+"\\"+auction.getAuction_pic());
			file.delete();
			pic.transferTo(new File(realPath+"\\"+fileName));
			auction.setAuction_pic(fileName);
		}
		System.out.println(auction);
		auctionService.update(auction);
		return "redirect:/selectAll.do";
		
	}
	//条件查询
	@RequestMapping("/selectSs")
	public String selectSs(Map map,String auction_name,String auction_desc,Date auction_start_time,Date auction_end_time,Double auction_start_price){
	List<Auction> list=auctionService.selectSs(auction_name, auction_desc, auction_start_time, auction_end_time, auction_start_price);
		map.put("list", list);
		return "manage";
		
	}
	//竞拍界面
	@RequestMapping("/selectOnee")
	public String selectOnee(Map map,int auction_id){
		List<Record> recordlist = recordService.selectRec(auction_id);
		Auction auction = auctionService.selectOne(auction_id);
		map.put("auction", auction);
		map.put("recordlist", recordlist);
		
		return "auction";
		
	}
	//竞拍
	@RequestMapping("/updatepic")
	public String updatepic(HttpSession session,int auction_id, double auction_upset,Record record){
		System.out.println(auction_id);
		System.out.println(auction_upset);
		auctionService.updatepic(auction_id, auction_upset);
		User user=(User) session.getAttribute("user");
		record.setUser_id(user.getUser_id());
		record.setAuction_id(auction_id);
		record.setAuction_price(auction_upset);
		recordService.addRec(record);
		List<Record>recordlist=recordService.selectRec(auction_id);
		Auction auction = auctionService.selectOne(auction_id);
		return "redirect:/selectOnee.do?auction_id="+auction_id;
		
	}
	
}
