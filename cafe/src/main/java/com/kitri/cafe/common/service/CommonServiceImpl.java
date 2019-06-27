package com.kitri.cafe.common.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kitri.cafe.common.dao.CommonDao;
import com.kitri.cafe.util.CafeConstance;
import com.kitri.cafe.util.NumberCheck;
import com.kitri.cafe.util.PageNavigation;

@Service
public class CommonServiceImpl implements CommonService{

	@Autowired
	private SqlSession sqlSession; // sqlSession을 왜 가져와?
	
	@Override
	public int getNextSeq() {
		return sqlSession.getMapper(CommonDao.class).getNextSeq();
	}

	@Override
	public PageNavigation getPageNavigation(Map<String, String> parameter) {
		PageNavigation navigation = new PageNavigation();
		
		// commonDAO에서 얻어와야함
		int newArticleCount = sqlSession.getMapper(CommonDao.class).getNewArticleCount(Integer.parseInt(parameter.get("bcode")));
		int totalArticleCount = sqlSession.getMapper(CommonDao.class).getTotalArticleCount(parameter);
		int totalPageCount = (totalArticleCount - 1) / CafeConstance.ARTICLE_SIZE + 1; // 가능한 연산으로 끝나는것이 좋아 (20개씩 끊을것)
		int pg = NumberCheck.NotNumberToOne(parameter.get("pg"));
		
		
		navigation.setNewArticleCount(newArticleCount);
		navigation.setTotalArticleCount(totalArticleCount);
		navigation.setTotalPageCount(totalPageCount);
		navigation.setNowFirst(pg <= CafeConstance.PAGE_SIZE);
		navigation.setNowEnd((totalPageCount - 1) / CafeConstance.PAGE_SIZE * CafeConstance.PAGE_SIZE < pg);
		navigation.setPageNo(pg);
		return navigation;
	}

}
