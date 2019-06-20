package com.kitri.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.service.MemberService;


@Controller
@RequestMapping("/user") //user로 오는건 무조건 얘가 처리하게 됨
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired // memberservice type이 있으면 알아서 주입을 해준다!! > getter/setter 쓸 필요 없이
//	@Qualifier("Impl1") : Implements 여러개하는 경우가 있으면 qualifier 써야함
	private MemberService memberService;
	
	@RequestMapping(value = "/register.kitri", method = RequestMethod.GET)
	public String register() { // String으로 하면view의 이름만 설정할 수 있다. 
		return "user/member/member";
	}
	
	@RequestMapping(value = "/register.kitri", method = RequestMethod.POST) // value가 같다면 설정쓰 : post 방식으로 넘어온다면..
	public String register(MemberDetailDto memberDetailDto, Model model) {
		// String으로 하면view의 이름만 설정할 수 있다. 
		// memberdetaildto로 하면 지가 알아서 다 보내줌 getter/setter든~~
		
		int cnt = memberService.registerMember(memberDetailDto);
		if(cnt != 0) { //성공 > ok로 ㄱㄱ(memberDetailDto 가지고)
			model.addAttribute("userInfo", memberDetailDto);
			return "user/member/registerok"; // view..where is model? 위에 model도 선언하고 그 안에 userinfo를 넣었음
		}
		return "user/member/member";
	}
	
	@RequestMapping(value = "/idcheck.kitri", method = RequestMethod.GET) 
	@ResponseBody
	public String idCheck(@RequestParam(name = "checkid", defaultValue = "") String id) { // responseBody : data자체를 말한다???
		System.out.println("idcheck로 넘어왔니?");
		
		logger.info("검색 아이디 : " + id); // requestGetparameter 없어도 자동으로 들어옴 > 검색하는 id가져옴~
		
		String json = memberService.idCheck(id);
		return json; //WEB-INF/view/{"idcount" : 0}.jsp
	}
	
	@RequestMapping("/zipsearch.kitri")
	public String zipsearch(@RequestParam("doro") String doro) {
		logger.info("검색 도로명 : " + doro);
		
		String json = memberService.zipSearch(doro);
		return json;
	}
	
	@RequestMapping("/login.kitri")
	public String login() {
		return "user/login/login";
	}
	

}





