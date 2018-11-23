package com.baizhi.dao;

import java.util.List;

import com.baizhi.entity.Record;

public interface RecordDao {
public List<Record> selectRec(int auction_id);

public void addRec(Record record);
}
