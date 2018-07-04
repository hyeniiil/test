package com.indiya.recruit.service;

import java.util.List;

import com.indiya.recruit.model.CommentDto;
import com.indiya.recruit.model.RecruitDto;

public interface RecruitService {

	int writeArticle(RecruitDto Recruitdto);
	List<RecruitDto> listArticle(int pg, String key, String word);
	RecruitDto viewArticle(int no);
	RecruitDto getArticle(int no);
	void modifyArticle(RecruitDto RecruitDto);
	void deleteArticle(int no);
	int writeComment(CommentDto commentdto);
}
