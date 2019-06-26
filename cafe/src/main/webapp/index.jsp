<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kitri.cafe.member.model.MemberDto"%>
<%
	response.sendRedirect(request.getContextPath() + "/boardadmin/boardmenu");

	MemberDto memberDto = new MemberDto();
	memberDto.setId("mnmm97");
	memberDto.setName("조윤영");
	memberDto.setEmail("claire97j@naver.com");
	
	session.setAttribute("userInfo", memberDto);
%>