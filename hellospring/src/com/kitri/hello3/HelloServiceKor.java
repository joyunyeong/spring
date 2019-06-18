package com.kitri.hello3;

public class HelloServiceKor implements HelloService {
	
	private HelloDao helloDao;
	
//	public void setHelloDao(HelloDao helloDao) { // get/set을 뺀 나머지를 소문자를 붙인걸 property라고 한다.
//		this.helloDao = helloDao;
//	}
	
	public HelloServiceKor(HelloDao helloDao) { // get/set을 뺀 나머지를 소문자를 붙인걸 property라고 한다.
		this.helloDao = helloDao;
	}
//	
//
//	public HelloServiceKor() {
//		System.out.println("> HelloServiceKor 생성자 호출!!");
//	}

	public String hello(String name) {
		return "	> " + name + "님 안녕하세요!!\n" + helloDao.getGreeting();
	}
	
}
