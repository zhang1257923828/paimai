package com.baizhi.service;

import java.util.List;

import com.baizhi.entity.Record;

public interface RecordService {
	public List<Record> selectRec(int auction_id);

	public void addRec(Record record);
}
