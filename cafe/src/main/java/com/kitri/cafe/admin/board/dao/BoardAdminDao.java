package com.kitri.cafe.admin.board.dao;

import java.util.List;

import com.kitri.cafe.admin.board.model.BoardListDto;
import com.kitri.cafe.admin.board.model.CategoryDto;

public interface BoardAdminDao { // board 게시판 목록 불러오기
	
	List<BoardListDto> getBoardMenuList(int ccode);
	
	List<BoardListDto> getCategoryList(); // 카테고리 목록
	void makeCategory(CategoryDto categoryDto);
	// category 번호 : ccode

	List<BoardListDto> getBoardTypeList();
	void makeBoard(BoardListDto boardListDto);
	
}
