package com.indiya.action.recruit;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.indiya.action.Action;
import com.indiya.common.service.CommonServiceImpl;
import com.indiya.recruit.model.RecruitDto;
import com.indiya.recruit.service.RecruitServiceImpl;
import com.indiya.util.PageNavigation;
import com.indiya.util.ParameterCheck;

public class RecruitListAction implements Action {

	private static RecruitListAction RecruitListAction;
	
	static {
		RecruitListAction = new RecruitListAction();
	}
	
	private RecruitListAction() {}

	public static RecruitListAction getRecruitListAction() {
		return RecruitListAction;
	}
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pg = ParameterCheck.naNToOne(request.getParameter("pg"));
		String key = ParameterCheck.nullToBlank(request.getParameter("key"));
		String word = ParameterCheck.nullToBlank(request.getParameter("word"));
		
		List<RecruitDto> list = RecruitServiceImpl.getRecruitService().listArticle(pg, key, word);
		PageNavigation navigator = CommonServiceImpl.getCommonService().getPageNavigation(pg, key, word);
		navigator.setRoot(request.getContextPath());
		navigator.makeNavigator();
		request.setAttribute("list", list);
		request.setAttribute("navigator", navigator);
		System.out.println("¿©±ä?");
		return "/Recruit/list.jsp?";
	}

}















