package com.kitri.cafe.board.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kitri.cafe.board.service.BoardService;
import com.kitri.cafe.common.service.CommonService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private CommonService commonservice;
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value = "/write", method = RequestMethod.GET) // 글쓰기 대비
	public String write(Map<String, String> parameter, Model model) {
		model.addAttribute("parameter", parameter);
		return "reboard/write";
	}
}
