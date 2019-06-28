package com.kitri.cafe.board.dao;

import java.util.List;
import java.util.Map;

import com.kitri.cafe.board.model.ReboardDto;

public interface ReboardDao {
	int writeArticle(ReboardDto reboardDto);
	List<ReboardDto> listArticle(Map<String, String> parameter);
	ReboardDto viewArticle(int seq);
	int modifyArticle(ReboardDto reboardDto);
	void deleteArticle(int seq);
	
	void updateStep(ReboardDto reboardDto); // 두개보내니까 dto보내도 상관 X
	int replyArticle(ReboardDto reboardDto); 
	void updateReply(int pseq);
}
