package com.kitri.cafe.board.service;

import java.util.List;
import java.util.Map;

import com.kitri.cafe.board.model.BoardDto;


public interface BoardService {
	int writeArticle(BoardDto boardDto);
	List<BoardDto> listArticle(Map<String, String> parameter); // Spring에서는 맵으로 따로따로 하지 않아도 받아올 수 있음
	BoardDto viewArticle(int seq);
	int modifyArticle(BoardDto boardDto);
	void deleteArticle(int seq);
}
