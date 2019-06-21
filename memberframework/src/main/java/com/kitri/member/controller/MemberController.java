package com.kitri.member.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kitri.member.model.MemberDetailDto;
import com.kitri.member.model.MemberDto;
import com.kitri.member.model.service.MemberService;


@Controller
@RequestMapping("/user") //user로 오는건 무조건 얘가 처리하게 됨
@SessionAttributes("userInfo") // attribute가 userinfo인 부분을 request에 담는것이 아니라 session에다 담는거라는것을 알려줌
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
			model.addAttribute("registerInfo", memberDetailDto);
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
	
	@RequestMapping(value = "/login.kitri", method = RequestMethod.GET)
	public String login() {
		return "user/login/login";
	}
	/*
	@RequestMapping(value = "/login.kitri", method = RequestMethod.POST)
	public String login(@RequestParam("id") String id, 
			@RequestParam("pass") String pass, HttpSession session) {
		MemberDto memberDto = memberService.loginMember(id, pass); // id, pass dto로 보내기
		if(memberDto != null) {
			session.setAttribute("userInfo", memberDto);
			return "user/login/loginok";
		} else {
			return "user/login/loginfail";
		}
	}
	*/
	
	@RequestMapping(value = "/login.kitri", method = RequestMethod.POST)
	public String login(@RequestParam Map<String, String> map, Model model) { 
		// 이상태대로라면 model임 > 우리는 넘어오는 parameter를 받는 용도로 써야함 > 그래서 위에 @RequestParam 선언해야함
		
		MemberDto memberDto = memberService.loginMember(map); // id, pass dto로 보내기
		if(memberDto != null) {
			//session.setAttribute("userInfo", memberDto);
			model.addAttribute("userInfo", memberDto);
			
			return "user/login/loginok";
		} else {
			return "user/login/loginfail";
		}
	}
	
	/*
	@RequestMapping("/logout.kitri")
	public String logout(HttpSession session) {
//		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo"); : 이렇게 가져올 필요가 없잖아!!
		session.removeAttribute("userInfo");
		return "redirect:/index.jsp";
	}
	*/
	
	@RequestMapping("/logout.kitri")
	public String logout(@ModelAttribute("userInfo") MemberDto memberDto, SessionStatus sessionStatus) { // userInfo안에 있는걸 여기다 넣어
			sessionStatus.setComplete();
			return "redirect:/index.jsp";
	}
}





