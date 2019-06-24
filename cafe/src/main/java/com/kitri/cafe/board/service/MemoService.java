package com.kitri.cafe.board.service;

import java.util.List;
import java.util.Map;

import com.kitri.cafe.board.model.MemoDto;

public interface MemoService {
	// view 메모는 필요없음 : memo니까!
	
	int writeMemo(MemoDto memoDto);
	List<MemoDto> listMemo(Map<String, String> parameter);
	
	void modifyMemo(MemoDto memoDto);
	void deleteMemo(int mseq);
}
