package com.kitri.cafe.board.service;

import java.util.List;
import java.util.Map;

import com.kitri.cafe.board.model.MemoDto;

public interface MemoService {
	// view 메모는 필요없음 : memo니까!
	
	void writeMemo(MemoDto memoDto);
	String listMemo(int seq); // 글 번호만 있으면됨
	void modifyMemo(MemoDto memoDto);
	String deleteMemo(int seq, int mseq);
}
