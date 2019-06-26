package com.kitri.cafe.common.service;

public interface CommonService {
	int getNextSeq(); // 다음 글번호 얻어오기
	void updateHit(int seq);
}
