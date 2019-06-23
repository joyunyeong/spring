package com.kitri.member.model.service;

import java.util.Map;

import com.kitri.member.model.*;

public interface MemberService {

	String idCheck(String id);
	String zipSearch(String doro);
	
	MemberDto loginMember(Map<String, String> map);
	MemberDetailDto getMember(String id);
	
	int registerMember(MemberDetailDto memberDetailDto);
	int modifyMember(MemberDetailDto memberDetailDto);
	int deleteMember(String id);
	
}
