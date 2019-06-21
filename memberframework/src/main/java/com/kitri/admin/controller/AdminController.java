package com.kitri.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kitri.admin.model.service.AdminService;
import com.kitri.member.controller.MemberController;
import com.kitri.member.model.MemberDto;

@Controller
@RequestMapping("/admin")
public class AdminController  {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/mvmemberlist.kitri", method = RequestMethod.GET)
	public String allList(MemberDto memberDto, Model model) {
		System.out.println("> AdminController로 들어왔니?");
		System.out.println(memberDto);
		
		return "admin/member/memberlist";
	}

}
