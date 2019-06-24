package com.kitri.cafe.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kitri.cafe.board.service.AlbumService;

@Controller
@RequestMapping("/album")
public class AlbumController {
	
	@Autowired
	private AlbumService albumService;
	
	// void로 써도 알아서 mapping되서 넘어감~!
	@RequestMapping(value = "/write", method = RequestMethod.GET) // 글쓰기 대비
	public String write() {
		// void해도 이동해 > /write가 이름이 되어버려!!
		return "reboard/write";
	}
}
