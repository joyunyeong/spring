package com.kitri.hello.model.service;

import com.kitri.hello.model.dao.HelloDao;

public class HelloServiceImpl implements HelloService {
	
	private HelloDao helloDao;
	
	
	//public HelloServiceImpl(HelloDao helloDao) { // get/set을 뺀 나머지를 소문자를 붙인걸 property라고 한다.
	//	this.helloDao = helloDao;
	//}

	public void setHelloDao(HelloDao helloDao) {
		this.helloDao = helloDao;
	}
	
	public String hello(String name) {
		return "	> " + name + "님 안녕하세요!!\n" + helloDao.getGreeting();
	}


	
}
