// hello4는 xml 없는 상태 > anotation으로 만들어 볼것임 > java file > HelloServiceFactory.java

package com.kitri.hello4;

import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class HelloMain {
	public static void main(String[] args) {
		
		ApplicationContext context = new AnnotationConfigApplicationContext(HelloServiceFactory.class); // annotation
		HelloService helloService = context.getBean("hs", HelloService.class);
		String msg = helloService.hello("조윤영");
		
		System.out.println(msg);
		
		HelloService helloService1 = context.getBean("hs", HelloService.class); // annotation과 bean 설정해야 쓸 수 있음 > factory에서
		HelloService helloService2 = context.getBean("hs", HelloService.class);
		System.out.println(helloService1 + "     " + helloService2); // prototype을 설정했기 때문에 값이 다른게 나옴
		
	}
}


//http://maven.springframework.org/release/org/springframework/spring/



