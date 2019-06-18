// 순서의 흐름 잘 이해할 것!

package com.kitri.hello3;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloMain {

	public static void main(String[] args) {
//		HelloService helloService = new HelloServiceKor();		
//		HelloService helloService = new HelloServiceEng();
		
//		spring 2.x
//		Resource resource = new ClassPathResource("com/kitri/hello3/applicationContext.xml");
//		BeanFactory factory = new XmlBeanFactory(resource);
//		HelloService helloService = (HelloService) factory.getBean("hs");
		
		System.out.println("★  프로그램 시작!!!!!");
		ApplicationContext context = new ClassPathXmlApplicationContext("com/kitri/hello3/applicationContext.xml");
		System.out.println("	> 설정파일 읽었다!!!!!");
		
		HelloService helloService = context.getBean("hs", HelloService.class);
		System.out.println("> service 얻어왔다!!!!!");
		String msg = helloService.hello("조윤영");
		
		System.out.println(msg);
		
		// 밑에 방식은 생성자를 따로 만듬
		//HelloService h1 = new HelloServiceKor(); 
		//HelloService h2 = new HelloServiceKor();
		//System.out.println(h1 + "    " + h2);
//		
		
		// 같은 주소의 값을 얻어옴!///
		HelloService h3 = context.getBean("hs", HelloService.class);
		System.out.println("1111111111111111111");
		HelloService h4 = context.getBean("hs", HelloService.class);
		System.out.println(h3 + "    " + h4);
		
		
		
		
	}
	
}


//http://maven.springframework.org/release/org/springframework/spring/



