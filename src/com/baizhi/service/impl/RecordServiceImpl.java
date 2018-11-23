package com.baizhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baizhi.dao.RecordDao;
import com.baizhi.entity.Record;
import com.baizhi.service.RecordService;
@Service
public class RecordServiceImpl implements RecordService {
	@Autowired
	private RecordDao recordDao;
	@Override
	public List<Record> selectRec(int auction_id) {
		// TODO 自动生成的方法存根
		return recordDao.selectRec(auction_id);
	}

	@Override
	public void addRec(Record record) {
		// TODO 自动生成的方法存根
		recordDao.addRec(record);
	}

}
