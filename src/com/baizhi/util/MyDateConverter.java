package com.baizhi.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

/**
 * �Զ�����������ת����
 * @author ��
 *
 */
public class MyDateConverter implements Converter<String, Date> {
/*
	//�Զ���������
	private final String[] patterns=new String[] {"yyyy-MM-dd","yyyy/MM/dd","yyyy.MM.dd","yyyy��MM��dd��"};
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
		//throw new RuntimeException("��������ڸ�ʽ���ַ�������");
		return null;
	}*/
	
	//�Զ���һ������
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
