package com.indiya.action.recruit;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.indiya.action.Action;
import com.indiya.member.dto.MemberDto;
import com.indiya.recruit.service.RecruitServiceImpl;

public class RecruitDeleteAction implements Action {

	private static RecruitDeleteAction RecruitDeleteAction;
	
	static {
		RecruitDeleteAction = new RecruitDeleteAction();
	}
	
	private RecruitDeleteAction() {}

	public static RecruitDeleteAction getRecruitDeleteAction() {
		return RecruitDeleteAction;
	}
	
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int board_no = Integer.parseInt(request.getParameter("no"));
		RecruitServiceImpl.getRecruitService().deleteArticle(board_no);
		String path = "/Recruit/deleteok.jsp?";
		return path;
		
	}

}
