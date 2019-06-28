	package com.kitri.cafe.board.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.cafe.board.model.ReboardDto;
import com.kitri.cafe.board.service.ReboardService;
import com.kitri.cafe.common.service.CommonService;
import com.kitri.cafe.member.model.MemberDto;
import com.kitri.cafe.util.PageNavigation;

@Controller
@RequestMapping("/reboard")
public class ReboardController {
	
	@Autowired
	private CommonService commonService;
	
	@Autowired
	private ReboardService reboardService;
	
	@RequestMapping(value = "/write", method = RequestMethod.GET) // 글쓸걸대비
	public void write(@RequestParam Map<String, String> parameter, Model model) {
		model.addAttribute("parameter", parameter);
	}
	
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(ReboardDto reboardDto, @RequestParam Map<String, String> parameter, Model model, HttpSession session) { // 이 내용을 DB에다 집어넣어야함
		String path = "";
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		
		if(memberDto != null) {
			int seq = commonService.getNextSeq(); // 글번호를 무조건 얻어오는가? : NOPE > 로그인 안한사람은 필요없어!!!
			
			reboardDto.setSeq(seq);
			reboardDto.setId(memberDto.getId());
			reboardDto.setName(memberDto.getName());
			reboardDto.setEmail(memberDto.getEmail());
			reboardDto.setRef(seq);// 새글일때 ref는 글번호랑 같이함 > ref : 그룹번호
			
			seq = reboardService.writeArticle(reboardDto); // 정상적으로 insert되면 글번호 받아올꺼야
			
			
			if(seq != 0) {
				model.addAttribute("seq", seq);
				path = "reboard/writeok";
				System.out.println("글번호 : " + seq);
			} else {
				path = "reboard/writefail";
				System.out.println("글번호 : " + seq);
			}
		
		} else {
			path = "";
		}
		model.addAttribute("parameter", parameter); // parameter에 bcode 이런거 들어있긔
		return path;
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String view(@RequestParam("seq") int seq, @RequestParam Map<String, String> parameter, Model model, HttpSession session) {
		// logincheck 해야함
		
		String path = "";
		
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) { // null이 아닐때만 글이 보여야함
			ReboardDto reboardDto = reboardService.viewArticle(seq);
			
			model.addAttribute("article", reboardDto);
			model.addAttribute("parameter", parameter);
			path = "reboard/view";
		} else {
			// 로그인으로 가라
			path = "redirect:/index.jsp";
		}
		return path;
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET) // 글쓸걸대비
	public void list(@RequestParam Map<String, String> parameter, Model model, HttpServletRequest request) {
		
		List<ReboardDto> list = reboardService.listArticle(parameter);
		PageNavigation pageNavigation = commonService.getPageNavigation(parameter); // service는 어디로 가야할까? reboard X common으로!!
		pageNavigation.setRoot(request.getContextPath());
		pageNavigation.makeNavigator();
		
		model.addAttribute("parameter", parameter);
		model.addAttribute("articleList", list);
		model.addAttribute("navigator", pageNavigation);
	}
	
	@RequestMapping(value = "/reply", method = RequestMethod.GET) 
	public String reply(@RequestParam("seq") int seq, @RequestParam Map<String, String> parameter, Model model, HttpSession session) {
		String path = "";
				
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		if(memberDto != null) { // null이 아닐때만 글이 보여야함
			ReboardDto reboardDto = reboardService.getArticle(seq);
					
			model.addAttribute("article", reboardDto);
			model.addAttribute("parameter", parameter);
			path = "reboard/reply";
		} else { // 로그인으로 가라
			path = "redirect:/index.jsp";
		}
		return path;
	}
	
	@RequestMapping(value = "/reply", method = RequestMethod.POST)
	public String reply(ReboardDto reboardDto, @RequestParam Map<String, String> parameter, Model model, HttpSession session) { // 이 내용을 DB에다 집어넣어야함
		String path = "";
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		
		if(memberDto != null) {
			int seq = commonService.getNextSeq(); // 글번호를 무조건 얻어오는가? : NOPE > 로그인 안한사람은 필요없어!!!

			reboardDto.setSeq(seq);
			reboardDto.setId(memberDto.getId());
			reboardDto.setName(memberDto.getName());
			reboardDto.setEmail(memberDto.getEmail());
			// reboardDto.setRef(seq); 여기서는 원글 ref가 있으니까 setRef하면 X
			
			seq = reboardService.replyArticle(reboardDto);
			
			if(seq != 0) {
				model.addAttribute("seq", seq);
				path = "reboard/writeok";
				System.out.println("글번호 : " + seq);
			} else {
				path = "reboard/writefail";
				System.out.println("글번호 : " + seq);
			}
		
		} else {
			path = "";
		}
		model.addAttribute("parameter", parameter); // parameter에 bcode 이런거 들어있긔
		return path;
	}
}
