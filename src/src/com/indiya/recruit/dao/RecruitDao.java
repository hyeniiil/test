package com.indiya.recruit.dao;

import java.util.List;
import java.util.Map;

import com.indiya.recruit.model.CommentDto;
import com.indiya.recruit.model.RecruitDto;

public interface RecruitDao {

	int writeArticle(RecruitDto Recruitdto);
	List<RecruitDto> listArticle(Map<String, String> map);
	RecruitDto viewArticle(int no);
	RecruitDto getArticle(int no);
	void modifyArticle(RecruitDto RecruitDto);
	void deleteArticle(int no);
	CommentDto writeComment(CommentDto commentdto);
	
}
