package com.kitri.cafe.board.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kitri.cafe.board.dao.ReboardDao;
import com.kitri.cafe.board.model.ReboardDto;
import com.kitri.cafe.common.dao.CommonDao;
import com.kitri.cafe.util.CafeConstance;
import com.kitri.cafe.util.NumberCheck;

@Service
public class ReboardServiceImpl implements ReboardService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int writeArticle(ReboardDto reboardDto) {
		int cnt = sqlSession.getMapper(ReboardDao.class).writeArticle(reboardDto);
		return cnt != 0 ? reboardDto.getSeq() : 0;
	}

	@Override
	public List<ReboardDto> listArticle(Map<String, String> parameter) {
		// page번호 needed
		int pg = NumberCheck.NotNumberToOne(parameter.get("pg")); // 숫자로 얻어온 이유? * - 하려고
		int end = pg * CafeConstance.ARTICLE_SIZE;
		int start = end - CafeConstance.ARTICLE_SIZE;
		parameter.put("start", start + "");
		parameter.put("end", end + "");
		
		return sqlSession.getMapper(ReboardDao.class).listArticle(parameter);
	}

	@Override
	@Transactional
	public ReboardDto viewArticle(int seq) {
		sqlSession.getMapper(CommonDao.class).updateHit(seq);
		ReboardDto reboardDto = sqlSession.getMapper(ReboardDao.class).viewArticle(seq);
		reboardDto.setContent(reboardDto.getContent().replace("\n", "<br>")); // enter 처리하기
		return sqlSession.getMapper(ReboardDao.class).viewArticle(seq);
	}
	
	@Override
	@Transactional
	public ReboardDto getArticle(int seq) {
		return sqlSession.getMapper(ReboardDao.class).viewArticle(seq);
	}

	@Override
	public int modifyArticle(ReboardDto reboardDto) {
		return 0;
	}

	@Override
	public void deleteArticle(int seq) {

	}

	@Override
	@Transactional
	public int replyArticle(ReboardDto reboardDto) {
		// ★★★★ update 순서!!!
		ReboardDao reboardDao = sqlSession.getMapper(ReboardDao.class);
		
		// 순서주의
		reboardDao.updateStep(reboardDto);
		reboardDao.replyArticle(reboardDto);
		reboardDao.updateReply(reboardDto.getPseq());
		
		// return 글 번호 받기!!
		return reboardDto.getSeq();
	}

}
