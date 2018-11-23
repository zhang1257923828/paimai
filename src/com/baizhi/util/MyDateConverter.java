package com.baizhi.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * 自定义日期类型转换器
 * @author 李
 *
 */
public class MyDateConverter implements Converter<String, Date> {
/*
	//自定义多个类型
	private final String[] patterns=new String[] {"yyyy-MM-dd","yyyy/MM/dd","yyyy.MM.dd","yyyy年MM月dd日"};
	@Override
	public Date convert(String arg0) {
		for (int i = 0; i < patterns.length; i++) {
			
			SimpleDateFormat sdf = new SimpleDateFormat(patterns[i]);
			try {
				Date date=sdf.parse(arg0);
				return date;
			} catch (ParseException e) {
				//e.printStackTrace();
			}
			
		}
		//throw new RuntimeException("输入的日期格式的字符串不对");
		return null;
	}*/
	
	//自定义一个类型
	private String pattern="yyyy-MM-dd";
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}

	@Override
	public Date convert(String arg0) {
		//2018-10-24===>Date
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		try {
			Date date = sdf.parse(arg0);
			return date;
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
