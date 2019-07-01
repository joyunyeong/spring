package com.kitri.cafe.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kitri.cafe.board.model.MemoDto;
import com.kitri.cafe.board.service.MemoService;
import com.kitri.cafe.member.model.MemberDto;

@RestController // Controller에서 바뀐 이유???? : 무조건 response body로 넘어간다
@RequestMapping("/memo")
public class MemoController {

	@Autowired
	private MemoService memoService;
	
	@RequestMapping(method = RequestMethod.POST, consumes = "application/json") // JSON아니면 안받음
	public @ResponseBody String write(@RequestBody MemoDto memoDto, HttpSession session) { // Json객체로 보내고 memoDto로 받을 때
		System.out.println(memoDto.getMcontent()); // dependency jackson 없으면 UTF8 뭐시기 에러 뜸 !!! 주의!!
		
		MemberDto memberDto = (MemberDto)session.getAttribute("userInfo");
		if(memberDto != null) {
			memoDto.setId(memberDto.getId());
			memoDto.setName(memberDto.getName());
			memoService.writeMemo(memoDto);
			System.out.println(memoDto.getId() + memoDto.getName());
			
			// 밑에 댓글창에 뿌릴거얌
			String json = memoService.listMemo(memoDto.getSeq()); // service 통해서 json으로 올꺼임
			
			return json;
		}
		return "";
	}
	
	@RequestMapping(method = RequestMethod.GET, consumes = "application/json", headers = {"Content-type=application/json"})
	public @ResponseBody String list(int seq) {
		String json = memoService.listMemo(seq);
		return json;
	}
	
	// /memo/234235 : 바뀌는 url이라해서 { }를 붙인다
	@RequestMapping(value="/{seq}/{mseq}", method = RequestMethod.DELETE, consumes = "application/json", headers = {"Content-type=application/json"} )
	public String delete(@PathVariable(name = "seq") int seq, @PathVariable(name = "mseq") int mseq) { //이 mseq와 위의 value mseq와 같아야 한다
		memoService.deleteMemo(seq, mseq);
		String json = memoService.listMemo(seq);
		return json;
	}
	
	
	
	
	
}
