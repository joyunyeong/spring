package com.kitri.hello.model.dao;

import java.util.Calendar;

public class HelloDaoImpl implements HelloDao{
	Calendar calendar;
	
	//public HelloDaoImpl() {
	//	calendar = Calendar.getInstance();
	//}
	
	public void makeCalendar() {
		// 생성자가 없으니까 dispatcher-servlet에서 init으로 시작
		calendar = Calendar.getInstance();
	}
	
	public String getGreeting() {
		// 나중엔 여기에 myBatis 넣음
		int hour = calendar.get(Calendar.HOUR_OF_DAY);
		if(hour >7 && hour <12) {
			return "	> 즐거운 아침되세요.";
		} else if(hour > 12 && hour <18) {
			return "	> 즐거운 점심되세요.";
		} else {
			return "	> 즐거운 저녁되세요.";
		}
	}
}
