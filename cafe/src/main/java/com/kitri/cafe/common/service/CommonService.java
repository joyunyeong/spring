package com.kitri.cafe.common.service;

import java.util.Map;

import com.kitri.cafe.util.PageNavigation;

public interface CommonService {
	int getNextSeq(); // 다음 글번호 얻어오기
	PageNavigation getPageNavigation(Map<String, String> parameter);
}
