package com.indiya.action.recruit;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.member.dto.MemberDto;
import com.indiya.recruit.model.RecruitDto;
import com.indiya.recruit.service.RecruitServiceImpl;
import com.indiya.util.ParameterCheck;

public class RecruitGetArticleAction implements Action {
	
	private static RecruitGetArticleAction RecruitGetArticleAction;
	
	static {
		RecruitGetArticleAction = new RecruitGetArticleAction();
	}
	
	private RecruitGetArticleAction() {}

	public static RecruitGetArticleAction getRecruitCommentAction() {
		return RecruitGetArticleAction;
	}
	

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String path = "/Recruit/view.jsp?";
		int board_no = Integer.parseInt(request.getParameter("no"));
		RecruitDto RecruitDto = RecruitServiceImpl.getRecruitService().getArticle(board_no);
		request.setAttribute("article", RecruitDto);
		path = "/Recruit/modify.jsp?";
		return path;

	}

}
