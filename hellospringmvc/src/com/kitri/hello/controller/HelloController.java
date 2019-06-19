package com.kitri.hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.hello.model.service.HelloService;

@Controller // 꼭 써야 404에러 안뜸!!!
public class HelloController {
	
	private HelloService helloService;
	
	public void setHelloService(HelloService helloService) {
		this.helloService = helloService;
	}

	@RequestMapping("hello.kitri") // 이걸 붙여줘야 hello.kitri로 들어왔을 때 이걸로 해결한다는 뜻
	public ModelAndView greeting() {
		
		// forward로 넘어가는거 잊지 말기!!

		ModelAndView mav = new ModelAndView();
		String msg = helloService.hello("조윤영");
		mav.addObject("msg", msg);
		mav.setViewName("result"); // result만 붙이면 알아서 .jsp 써줌
		return mav;
	}

}