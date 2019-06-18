package com.kitri.ditest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DiTest {
	 public static void main(String[] args) {
		 ApplicationContext context = new ClassPathXmlApplicationContext("com/kitri/ditest/applicationContext.xml"); // 이거 이름자체가 중요한건 X
		 
		 MemberDto m1 = context.getBean("m1", MemberDto.class); // memberDto의 class 타입으로 얻어올꺼다
		 System.out.println("--------------------------- M1 ---------------------------");
		 System.out.println(m1); // applicationContext의 순서대로 들어감

		 MemberDto m2 = context.getBean("m2", MemberDto.class);
		 System.out.println("--------------------------- M2 ---------------------------");
		 System.out.println(m2); // 이대로 하면 m2없다고 나옴 > 만들렴

		 MemberDto m3 = context.getBean("m3", MemberDto.class);
		 System.out.println("--------------------------- M3 ---------------------------");
		 System.out.println(m3);

		 MemberDto m4 = context.getBean("m4", MemberDto.class);
		 System.out.println("--------------------------- M4 ---------------------------");
		 System.out.println(m4);

		 MemberDto m5 = context.getBean("m5", MemberDto.class);
		 System.out.println("--------------------------- M5 ---------------------------");
		 System.out.println(m5);
		 
		 MemberDto m6 = context.getBean("m6", MemberDto.class);
		 System.out.println("--------------------------- M6 ---------------------------");
		 System.out.println(m6);
		 
		 MemberDto m7 = context.getBean("m7", MemberDto.class);
		 System.out.println("--------------------------- M6 ---------------------------");
		 System.out.println(m7);
	}
}
