package com.kitri.cafe.admin.board.service;

import java.util.List;

import com.kitri.cafe.admin.board.model.BoardListDto;
import com.kitri.cafe.admin.board.model.CategoryDto;

public interface BoardAdminService {
	
	List<BoardListDto> getBoardMenuList(int ccode);
	
	List<BoardListDto> getCategoryList(); // 카테고리 목록
	void makeCategory(CategoryDto categoryDto);

	List<BoardListDto> getBoardTypeList();
	void makeBoard(BoardListDto boardListDto);
}
