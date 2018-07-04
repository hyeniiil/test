package com.indiya.action.recruit;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.recruit.model.RecruitDto;
import com.indiya.recruit.service.RecruitServiceImpl;

public class RecruitModifyAction implements Action {

	private static RecruitModifyAction RecruitModifyAction;
	
	static {
		RecruitModifyAction = new RecruitModifyAction();
	}
	
	private RecruitModifyAction() {}

	public static RecruitModifyAction getRecruitModifyAction() {
		return RecruitModifyAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			RecruitDto RecruitDto = new RecruitDto();	
			int board_no = Integer.parseInt(request.getParameter("no"));
			RecruitDto.setTitle(request.getParameter("title"));
			RecruitDto.setContents(request.getParameter("contents"));
			RecruitDto.setNo(board_no);
			RecruitServiceImpl.getRecruitService().modifyArticle(RecruitDto);
			String path = "/Recruit/modifyok.jsp?";
			return path;
	}

}
