package com.bitc.FP.board.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bitc.FP.board.dao.BoardDAO;
import com.bitc.FP.board.vo.BoardVO;
import com.bitc.FP.common.util.Criteria;
import com.bitc.FP.common.util.PageMaker;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardServiceImpl implements BoardService {
	
	private final BoardDAO dao;

	@Override
	public String regist(BoardVO board) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateCnt(int bno) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public BoardVO read(int b_num) throws Exception {
		return dao.read(b_num);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public String modify(BoardVO board) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String remove(int bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}

	@Override
	public PageMaker getPageMaker(Criteria cri) throws Exception {
		int totalCount = dao.totalCount();
		PageMaker pm = new PageMaker(cri, totalCount);
		return pm;
	}

} // end BoardServiceImpl class
