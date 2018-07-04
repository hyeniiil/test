package com.indiya.recruit.service;

import java.util.List;

import com.indiya.recruit.model.CommentDto;
import com.indiya.recruit.model.RecruitDto;

public class RecruitServiceImpl implements RecruitService {

	private static RecruitService RecruitService;
	
	static {
		RecruitService = new RecruitServiceImpl();
	}
	
	private RecruitServiceImpl() {}
	
	public static RecruitService getRecruitService() {
		return RecruitService;
	}
	
	@Override
	public int writeArticle(RecruitDto Recruitdto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<RecruitDto> listArticle(int pg, String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RecruitDto viewArticle(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RecruitDto getArticle(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyArticle(RecruitDto RecruitDto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteArticle(int no) {
		// TODO Auto-generated method stub

	}

	@Override
	public int writeComment(CommentDto commentdto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
