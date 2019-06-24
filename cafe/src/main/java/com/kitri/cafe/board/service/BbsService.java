package com.kitri.cafe.board.service;

import java.util.List;
import java.util.Map;

import com.kitri.cafe.board.model.BbsDto;


public interface BbsService { // 자료실
	int writeArticle(BbsDto bbsDto);
	List<BbsDto> listArticle(Map<String, String> parameter); // Spring에서는 맵으로 따로따로 하지 않아도 받아올 수 있음
	BbsDto viewArticle(int seq);
	int modifyArticle(BbsDto bbsDto);
	void deleteArticle(int seq); // 글번호에 해당하는거 지워라
}
