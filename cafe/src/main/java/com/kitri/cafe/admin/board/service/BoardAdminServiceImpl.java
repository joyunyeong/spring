package com.kitri.cafe.admin.board.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.cafe.admin.board.dao.BoardAdminDao;
import com.kitri.cafe.admin.board.model.BoardListDto;
import com.kitri.cafe.admin.board.model.CategoryDto;

@Service
public class BoardAdminServiceImpl implements BoardAdminService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardListDto> getBoardMenuList(int ccode) {
		return sqlSession.getMapper(BoardAdminDao.class).getBoardMenuList(ccode); // 이 클래스를 매퍼로 쓰곘따 
	}

	@Override
	public List<BoardListDto> getCategoryList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void makeCategory(CategoryDto categoryDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardListDto> getBoardTypeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void makeBoard(BoardListDto boardListDto) {
		// TODO Auto-generated method stub
		
	}

}
