package com.kitri.cafe.admin.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.cafe.admin.board.model.BoardListDto;
import com.kitri.cafe.admin.board.service.BoardAdminService;

@Controller
@RequestMapping("/boardadmin")
public class BoardAdminController {
	
	@Autowired // 자동주입 : 가능한 이유는? servlet-context에 context:component-scan 지정했기 때문에!
	private BoardAdminService boardAdminService;
	
	@RequestMapping("/boardmenu")
	public ModelAndView boardMenu(@RequestParam(name = "ccode", defaultValue = "0") int ccode) {
		System.out.println("> 게시판 목록");
		
		List<BoardListDto> list = boardAdminService.getBoardMenuList(ccode);
		System.out.println("> 게시판 갯수 : " + list.size());
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardmenu", list);
		mav.setViewName("admin/boardmenu");
		return mav;
	}
	
	
	
	
	
	
	
}
