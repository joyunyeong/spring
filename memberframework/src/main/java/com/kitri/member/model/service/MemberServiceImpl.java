package com.kitri.member.model.service;

import java.util.*;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.member.model.*;
import com.kitri.member.model.dao.MemberDao;
import com.kitri.member.model.dao.MemberDaoImpl;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public String idCheck(String id) {
		int cnt = memberDao.idCheck(id);
//		System.out.println("cnt : " + cnt);
		
//		원래 있던 부분을 json으로 바꿔야함
		JSONObject json = new JSONObject();
		json.put("idcount", cnt);
		return json.toString();  // {"idcount" : 0}
	}

	@Override
	public String zipSearch(String doro) {
		/* 원래 code
		String result = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
		List<ZipcodeDto> list = memberDao.zipSearch(doro);
		result += "<ziplist>\n";
		for(ZipcodeDto zipDto : list) {
			result += "	<zip>\n";
			result += "		<zipcode>" + zipDto.getZipcode() + "</zipcode>\n";
			result += "		<address><![CDATA[" + zipDto.getSido() + " " + zipDto.getGugun() + " " + zipDto.getUpmyon() + " " + zipDto.getDoro() + " " + zipDto.getBuildingNumber() + " " + zipDto.getSigugunBuildingName() + "]]></address>\n";
			result += "	</zip>\n";
		}
		result += "</ziplist>";
		*/
		
		List<ZipcodeDto> list = memberDao.zipSearch(doro);
		JSONObject json = new JSONObject();
		JSONArray jarray = new JSONArray(list); // 여기까지 쓰면 밑에 for문 쓰지 않아도 내역 나옴!!! ★★★★★★★★★★★★★★★★★★★★★
		
//		JSONArray jarray = new JSONArray();
		
//		for(ZipcodeDto zipcodeDto : list) {
//			JSONObject zipcode = new JSONObject();
//			zipcode.put("", zipcodeDto.getZipcode());
//			zipcode.put("", zipcodeDto.getSido() + " " +
//							zipcodeDto.getGugun() + " " +
//							zipcodeDto.getUpmyon() + " " +
//							zipcodeDto.getDoro() + " " +
//							zipcodeDto.getBuildingNumber() + " " +
//							zipcodeDto.getSigugunBuildingName());
//			jarray.put(zipcode);
//		}
//		
		json.put("ziplist", jarray);
		System.out.println(json.toString());
		return json.toString(); // {"ziplist":[{"":"서울특별시 서초구   방배로 238 방배동우체국"},{"":"서울특별시 서초구   방배로5길 43 방배동천주교회"}]
	}

	@Override
	public int registerMember(MemberDetailDto memberDetailDto) {
		return memberDao.registerMember(memberDetailDto);
	}

	@Override
	public int modifyMember(MemberDetailDto memberDetailDto) {
		System.out.println("> modify하러 들어옴");
		return memberDao.modifyMember(memberDetailDto);
	}
	
	@Override
	public MemberDto loginMember(Map<String, String> map) {
//		Map<String, String> map = new HashMap<String, String>(); // id, pass map으로 받기
//		map.put("userid", id);
//		map.put("userpwd", pass);
		return memberDao.loginMember(map);
	}

	@Override
	public MemberDetailDto getMember(String id) {
		return null;
	}


	@Override
	public int deleteMember(String id) {
		return 0;
	}

}
